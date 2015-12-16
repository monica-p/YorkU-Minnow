#!/usr/bin/env python

"""
	ROS service node

	@para --> Heading value

	Publishes the value received to commandHeading
		--> commandHeading is subscribed by helmsman node.
	returns the same value as response
"""

import rospy
from std_msgs.msg import Float32
from minnow.srv import *

def setHeadingValueHandler(req):
	print "Setting Heading value to %s: "%(str(req.val))
	
	try:
		pub.publish(Float32(req.val))
	except rospy.ROSINterrupteException: pass

	return command_valResponse(req.val)

def setHeadingServer():
	#Initialise node
	rospy.init_node('set_heading_service')
	
	s = rospy.Service('set_heading_value', command_val, setHeadingValueHandler)
	print "Ready to set throttle value"
	rospy.spin() 

if __name__ == "__main__":
	#Create a publisher	
	pub = rospy.Publisher('commandHeading',Float32)
	
	#run the service server.
	setHeadingServer()
