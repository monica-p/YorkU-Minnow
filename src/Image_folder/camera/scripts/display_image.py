#!/usr/bin/env python

##============ Imports ===========================================================
import rospy
import cv2
from sensor_msgs.msg import Image
from minnow.msg import position
from cv_bridge import CvBridge, CvBridgeError
##=============== global variables =================================================
bridge = None
display_subs = None
position_subs = None
position_cord = list()

##===================== Helper function ==============================================

def imageCallback(data):
	try:
		cv_image = bridge.imgmsg_to_cv2(data, "bgr8")
    	except CvBridgeError, e:
      		print e

	
def positionCallback(data):
	global position_cord

def initialise():
	global bridge, display_subs, position_subs

	cv2.namedWindow("Image window", 1)
	bridge = CvBridge()

	#Subscribers
	display_subs = rospy.Subscriber("/camera/image",Image,imageCallback)
	position_subs = rospy.Subscriber("position",position,positionCallback)
	
## ======================== main =============================================================

if __name__ == '__main__':
	pass
