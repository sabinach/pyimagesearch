import numpy as np
import argparse
import imutils
import cv2

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--image", required=True, help="Path to the image")
args = vars(parser.parse_args())

# show image
image = cv2.imread(args["image"])
cv2.imshow("original", image)
cv2.waitKey(0)

# get image center
(h, w) = image.shape[:2]
center = (w//2, h//2)

# rotate 45 degrees (counter-clockwise)
M = cv2.getRotationMatrix2D(center, 45, 1) # rotate 45 degrees about the center, scale:1
rotated = cv2.warpAffine(image, M, (w, h)) # output dim: (w, h)
cv2.imshow("rotated by 45 degrees", rotated)
cv2.waitKey(0)

# rotate -90 degrees (clockwise)
M = cv2.getRotationMatrix2D(center, -90, 1) 
rotated = cv2.warpAffine(image, M, (w, h))
cv2.imshow("rotated by -90 degrees", rotated)
cv2.waitKey(0)

# use rotate function from imutils
rotated = imutils.rotate(image, 180)
cv2.imshow("rotated by 180 degrees", rotated)
cv2.waitKey(0)