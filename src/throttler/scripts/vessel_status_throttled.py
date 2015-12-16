#!/usr/bin/env python

'''
Subscriber: Subscribe to vessel_status
		--> Publisher of vessel_status:
			1. Arduino Node.


Publisher: Publishes to vessel_status_throttled
		--> subscriber of vessel_status_throttled:

updates the msg Boat content and publishes new data at some const rate. 
'''
import rospy
from minnow.msg import Boat

def vesselStatusCallback(data):
  global boat
  boat = data

if __name__ == '__main__':
  global boat
  boat = None

  rate = rospy.get_param('throttle_rate', 0.1)
  print "Using update rate " + str(rate)

  rospy.init_node('minnowThrottled')
  pub = rospy.Publisher("vesselStatusThrottled", Boat)
  rospy.Subscriber('vesselStatus', Boat, vesselStatusCallback)
  r = rospy.Rate(rate)
  while not rospy.is_shutdown():
    if boat != None: 
      print "Publishing number " + str(boat.header.seq)
      pub.publish(boat)
    else :
      print "Sleeping until a packet shows up"
    r.sleep()
