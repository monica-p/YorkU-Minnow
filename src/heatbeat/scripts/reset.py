#!/usr/bin/env python

import rospy
from std_msgs.msg import String

def reset():
    pub = rospy.Publisher('resetSystem', String, queue_size=10)
    rospy.init_node('reseter', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    reset_str = "reset"
    print reset_str
    pub.publish(String(reset_str))
    rate.sleep()

if __name__ == '__main__':
    try:
        reset()
    except rospy.ROSInterruptException:
        pass
