#!/usr/bin/env python

"""
	ROS service node

	@para --> throttle value

	Publishes the value received to setThrottle
		--> setThrottle is subscribed by arduino node.
	returns the same value as response
"""

import rospy
from std_msgs.msg import Float32
from minnow.srv import *

def setThrottleValueHandler(req):
	print "Setting throttle value to %s: "%(str(req.val))
	
	try:
		pub.publish(Float32(req.val))
	except rospy.ROSINterrupteException: pass

	return command_valResponse(req.val)

def setThrottleServer():
	#Initialise node
	rospy.init_node('set_throttle_service')
	
	s = rospy.Service('set_throttle_value', command_val, setThrottleValueHandler)
	print "Ready to set throttle value"
	rospy.spin() 

if __name__ == "__main__":
	#Create a publisher	
	pub = rospy.Publisher('setThrottle',Float32)
	
	#run the service server.
	setThrottleServer()
