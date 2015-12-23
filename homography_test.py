# To Extract Blue object in given image.

"""
Algorithm:
    step1 --> capture image from video.
    step2 --> extract the colored object to be tracked.
                a.decide a thresh hold.
                b. convert image to HSV
                c. Find countour for given thresh hold
    step3 --> Make Bounding box
    step4 --> Find Centroid (It will be only one)
    step5 --> find center of the frame

"""

#Required modules
import cv2
import numpy as np

counter = 1
knownImage = dict()

matImage = list(list())
matWorld = list(list())
testPoint = list()

matAnswer = None

#Reading Image
img = cv2.imread('test2.jpg')
img1 = cv2.imread('test2.jpg')

#Deciding Thresh holf for a colour (in this case Blue) (Tresh hold is for HSV domain)
BLUE_MIN = np.array([115, 100, 100],np.uint8)
BLUE_MAX = np.array([120, 255, 255],np.uint8)

#Convert image to HSV
hsv_img2 = cv2.cvtColor(img,cv2.COLOR_BGR2HSV)
hsv_img1 = cv2.cvtColor(img1,cv2.COLOR_BGR2HSV)

#Extract image for given tresh hold
frame_threshed2 = cv2.inRange(hsv_img2, BLUE_MIN, BLUE_MAX)
frame_threshed1 = cv2.inRange(hsv_img1, BLUE_MIN, BLUE_MAX)

#unknown fuction (NEED TO READ MORE ON)
erode = cv2.erode(frame_threshed1,None,iterations = 3)
dilate = cv2.dilate(erode,None,iterations = 10)

#Write changed image to out put (optional)
cv2.imwrite('output2.jpg', frame_threshed2)
cv2.imwrite('output1.jpg', frame_threshed1)

output1 = cv2.imread('output1.jpg')
output2 = cv2.imread('output2.jpg')

#Find countour in changed image
contours,hierarchy = cv2.findContours(dilate,cv2.RETR_LIST,cv2.CHAIN_APPROX_SIMPLE) # <-- Returns list of countours


#Mark Centroid of every possible contour
for cnt in contours:
    x,y,w,h = cv2.boundingRect(cnt)
    cx,cy = x+w /2 , y+h/2

    #Draw a bounding box
    cv2.rectangle(output1,(x,y),(x+w,y+h),[255,0,0],2)

    M = cv2.moments(cnt)

    CheckList = { 'm10' : M['m10'] , 'm00' : M['m00'] , 'm01' : M['m01'] , 'DivisionX' : int(M['m10']/M['m00']), 'DivisionY': int(M['m01']/M['m00']) }
    #print (CheckList)
    
    centroidX = int(M['m10']/M['m00'])
    centroidY = int(M['m01']/M['m00'])
    

    #cv2.circle(output1,(centroidX,centroidY),2,[0,0,255],3)
    cv2.putText(output1,str(counter), (centroidX,centroidY), cv2.FONT_HERSHEY_SIMPLEX, 1, 255)

    if (counter == 1 or counter == 2 or counter == 4 or counter == 5):
        knownImage[counter] = ((float(centroidX),float(centroidY)))

    if (counter == 3):
        testPoint.append([float(centroidX),float(centroidY)])

    counter += 1
        

matImage.append(knownImage[2])
matWorld.append([0,0])
matImage.append(knownImage[1])
matWorld.append([21.5,0])
matImage.append(knownImage[4])
matWorld.append([21.5,28])
matImage.append(knownImage[5])
matWorld.append([0,28])

print "KnownImage: ", knownImage
#print "Matrices: ", (np.array(matImage),np.array(matWorld))
print "World co-ordinates: ",np.array(matWorld)
print "\n ######################################### \n"

print "Image co-ordinates: ",np.array(matImage)
print "\n ######################################### \n"

matH = cv2.findHomography(np.array(matImage),np.array(matWorld))
#matH = cv2.findHomography(np.array(matWorld),np.array(matImage))
homoTest = [[testPoint[0][0]],[testPoint[0][1]],[1]]
projMatrix = matH[0]

print "Estimated Homography Matrix: ", projMatrix
print "\n ######################################### \n"

print "Test point: ", homoTest
print "\n ######################################### \n"

#matMultiplication(matH[0], testPoint)

mat1 = np.matrix((tuple(projMatrix[0]),tuple(projMatrix[1]),tuple(projMatrix[2])))
mat2 = np.matrix((tuple(homoTest[0]),tuple(homoTest[1]),tuple(homoTest[2])))

matAnswer = mat1 * mat2

#print "Matrix Answer", matAnswer

print "X: " , matAnswer[0][0] / matAnswer[2][0]
print "Y: ", matAnswer[1][0] / matAnswer[2][0]

#Display image.        
cv2.namedWindow("dst_rt",cv2.CV_WINDOW_AUTOSIZE)
cv2.imshow("dst_rt" , output1)
#cv2.imshow('output2.jpg', output2)
#print knownImage


cv2.waitKey(0)
cv2.destroyAllWindows()
