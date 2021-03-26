import numpy as np 
import argparse
import cv2

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--image", required=True, help="Path to the image")
args = vars(parser.parse_args())

# convert image to grayscale
image = cv2.imread(args["image"])
image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

# apply gaussian blur to remove high frequencing edges in image that we don't want
blurred = cv2.GaussianBlur(image, (5,5), 0)
cv2.imshow("image", image)
cv2.waitKey(0)

# threshold image: any value greater than 155 set to 255, else set to 0
(T, thresh) = cv2.threshold(blurred, 155, 255, cv2.THRESH_BINARY)
cv2.imshow("Threshold Binary", thresh)

# inverse threshold
(T, threshInv) = cv2.threshold(blurred, 155, 255, cv2.THRESH_BINARY_INV)
cv2.imshow("Threshold Binary Inverse", threshInv)

# bitwise_and inverse
cv2.imshow("bitwise_and", cv2.bitwise_and(image, image, mask=threshInv))
cv2.waitKey(0)
