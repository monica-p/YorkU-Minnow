import cv2
import numpy as np

img = cv2.imread('test2.jpg')

cv2.namedWindow("dst_rt",cv2.CV_WINDOW_AUTOSIZE)
cv2.imshow("dst_rt" , img)
count = 0

def clickHandle(event, x, y, flags, param):
	global count
	if event == cv2.EVENT_LBUTTONDOWN:
		print x,y

cv2.setMouseCallback("dst_rt", clickHandle)

cv2.waitKey(0)
cv2.destroyAllWindows()
