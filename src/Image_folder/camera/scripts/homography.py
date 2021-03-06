#!/usr/bin/env python
##================ Imports ================================================
import rospy
import sys
import cv2
from std_msgs.msg import String
from sensor_msgs.msg import Image
from minnow.msg import position
from cv_bridge import CvBridge, CvBridgeError
import numpy as np
##====================== Global Variables =====================================
HomographyMatrix = None
testPoint = [[0],[0],[1]]
calibrationFlag = False
collectionFlag = False
imagePoints = list()
worldPoints = list()
bridge = None
wait_key = -1
calibration_subscriber = None
position_publisher = None
##======================================= Helper Functions =========================
def clickHandler(event, x, y, flags, param):
	global imagePoints, worldPoints,calibrationFlag
	global wait_key

	if (event == cv2.EVENT_LBUTTONDOWN) and len(imagePoints) < 4:
		imagePoints.append([float(x),float(y)])
		print "Image points: ", imagePoints

def findHomography():
	global HomographyMatrix,calibrationFlag

	for i in range(len(imagePoints)):
		ip_str = raw_input("Enter co-ordinate corresponding to: " + str(imagePoints[i]) + "\n Format: x,y")
		ip_cor = ip_str.split(',')
		worldPoints.append([float(ip_cor[0]),float(ip_cor[1])])
	
	op_homography = cv2.findHomography(np.array(imagePoints),np.array(worldPoints))
	HomographyMatrix = op_homography[0]
	calibrationFlag = True
	print "homography: ",HomographyMatrix

	
	
def calibrate():
	global wait_key

	data = rospy.wait_for_message("/camera/image", Image, timeout=2)
	
	try:
		cv_image = bridge.imgmsg_to_cv2(data, "bgr8")
    	except CvBridgeError, e:
      		print e

	while (wait_key == -1):
		print wait_key
		cv2.imshow("Image window", cv_image)
		wait_key = cv2.waitKey(1000)
	cv2.destroyAllWindows()

def findBoat(img):
	#Deciding Thresh holf for a colour (in this case Blue) (Tresh hold is for HSV domain)
	RED_MIN = np.array([0, 100, 100],np.uint8)
	RED_MAX = np.array([10, 255, 255],np.uint8)
	
	#Convert image to HSV
	hsv_img = cv2.cvtColor(img,cv2.COLOR_BGR2HSV)
	
	#Extract image for given tresh hold
	frame_threshold = cv2.inRange(hsv_img, RED_MIN, RED_MAX)
	
	#Process Image
	erode = cv2.erode(frame_threshold,None,iterations = 3)
	dilate = cv2.dilate(erode,None,iterations = 10)

	#Find countour in changed image
	contours,hierarchy = cv2.findContours(dilate,cv2.RETR_LIST,cv2.CHAIN_APPROX_SIMPLE) # <-- Returns list of countours

	bestContour = None
	#Get Centroid of largest contour
	if len(contours) > 0:
		bestContour = contours[0];
		largestArea = cv2.contourArea(bestContour)    
		
		for cnt in contours:
		    area = cv2.contourArea(cnt)
		    if area > largestArea:
		        largestArea = area
		        bestContour = cnt
	
		x,y,w,h = cv2.boundingRect(bestContour)
		cx,cy = x+w /2 , y+h/2

		M = cv2.moments(bestContour)
			       
		centroidX = int(M['m10']/M['m00'])
		centroidY = int(M['m01']/M['m00'])

		return [centroidX,centroidY]
		

def homographyCallback(data):
	global testPoint

	if calibrationFlag == True:
		try:
			image_frame = bridge.imgmsg_to_cv2(data, "bgr8")
	    	except CvBridgeError, e:
	      		print e	

		counter_point = findBoat(image_frame)

		if (counter_point != None):
			cv2.circle(image_frame,(counter_point[0],counter_point[1]),3,[0,0,255],1)
			testPoint[0][0] = counter_point[0]
			testPoint[1][0] = counter_point[1]
	
			mat1 = np.matrix((tuple(HomographyMatrix[0]),tuple(HomographyMatrix[1]),tuple(HomographyMatrix[2])))
			mat2 = np.matrix((tuple(testPoint[0]),tuple(testPoint[1]),tuple(testPoint[2])))
	
			matAnswer = mat1 * mat2

			X = matAnswer[0][0] / matAnswer[2][0]
			Y = matAnswer[1][0] / matAnswer[2][0]
			
			print [X.item((0,0)),Y.item((0,0))]

			positionMsg = position()
			positionMsg.x = X.item((0,0))
			positionMsg.y = Y.item((0,0))

			position_publisher.publish(positionMsg)			
		else:
			pass
	else:
		pass
	

def initialise():
	global bridge,calibration_subscriber,position_publisher

	#Image parameters
	bridge = CvBridge()
	cv2.namedWindow("Image window",cv2.CV_WINDOW_AUTOSIZE)

	#publisher
	position_publisher = rospy.Publisher('position',position,queue_size=10)
	
	#subscriber
	homography_subcriber = rospy.Subscriber("/camera/image",Image,homographyCallback)

	#Mouse click
	cv2.setMouseCallback("Image window", clickHandler)

##============================ Main =========================================

if __name__ == '__main__':
	# initialise node
	rospy.init_node('find_coordinates',anonymous=True)
	
	#initialise Publishers and subscribers
	initialise()

	#Calibrate Homography Matrix
	calibrate()
	findHomography()

	rospy.spin()








