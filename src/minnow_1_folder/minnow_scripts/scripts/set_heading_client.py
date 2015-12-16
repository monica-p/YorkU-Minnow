#!/usr/bin/env python

import sys
import rospy
from minnow.srv import *

def setHeadingClient(val):
	rospy.wait_for_service('set_heading_value')
	
	try:
		heading_value = rospy.ServiceProxy('set_heading_value', command_val)
		response = heading_value(val)
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
	print "Requesting to set heading as %s"%(val)
	print "heading is set to: %s"%(setHeadingClient(val))
		
