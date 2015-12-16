#!/usr/bin/env python

import sys
import rospy
from minnow.srv import *

def setThrottleClient(val):
	rospy.wait_for_service('set_throttle_value')
	
	try:
		throttle_value = rospy.ServiceProxy('set_throttle_value', command_val)
		response = throttle_value(val)
		return response.retVal
	except rospy.ServiceException, e:
		print "Service call failed: %s"%e

def usage():
	return "%s val"%sys.argv[0]

if __name__ == "__main__":
	if len(sys.argv) == 2:
		val = float(sys.argv[1])
	else:
		print usage()
		sys.exit(1)
	print "Requesting to set throttle as %s"%(val)
	print "Throttle is set to: %s"%(setThrottleClient(val))
		
