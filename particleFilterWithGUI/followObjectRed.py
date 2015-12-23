import cv2
import numpy as np
import math
import time

################################################################################

epsilon = 0.0


def getthresholdedimg(hsv):
    #blue = cv2.inRange(hsv,np.array((152, 105, 127)),np.array((180, 145, 167)))
    blue = cv2.inRange(hsv,np.array((100,100,100)),np.array((120,255,255)))
    return (blue)


if __name__ == '__main__':
	
	#Initialize Camera
	c = cv2.VideoCapture(0)
	c.set(3, 320)
	c.set(4, 240)
	width, height = c.get(3), c.get(4)

	#Loop
	while(True):
	    #Capture Frame
	    _,f = c.read()
	    f = cv2.flip(f,1)
	    

	    #Process the image
	    blur = cv2.medianBlur(f,5)
	    hsv = cv2.cvtColor(f,cv2.COLOR_BGR2HSV)
	    blue = getthresholdedimg(hsv)
	    erode = cv2.erode(blue,None,iterations = 3)
	    dilate = cv2.dilate(erode,None,iterations = 10)

	    
	    #Find Contours
	    contours,hierarchy = cv2.findContours(dilate,cv2.RETR_LIST,cv2.CHAIN_APPROX_SIMPLE)

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

		cv2.drawContours(f,[bestContour],0,(0,255,0),2)

		M = cv2.moments(bestContour)
		               
		centroidX = int(M['m10']/M['m00'])
		centroidY = int(M['m01']/M['m00'])

		cv2.circle(f,(centroidX,centroidY),3,[0,0,255],1)
        	cv2.circle(f,(int(width/2),int(height/2)),3,[255,0,0],1)
        	cv2.line(f, (centroidX,centroidY), (int(width/2),int(height/2)), [0,255,0])

        	if cx > width/2:
            		heading = 'right'
        	else:
            		heading = 'left'

        	print (heading)

		#Calculate the Angle
		angle = math.atan((centroidX - (width/2))/(width/2)) * 180 / math.pi

	    cv2.imshow('img',f)
        
    	    if cv2.waitKey(25) == 27:
        	break

cv2.destroyAllWindows()
c.release()
