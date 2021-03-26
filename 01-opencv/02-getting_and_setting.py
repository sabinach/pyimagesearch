from __future__ import print_function
import argparse
import cv2

# argument parser
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--image", required=True, help="Path to image")
args = vars(parser.parse_args())

# read image path
image = cv2.imread(args["image"])
cv2.imshow("original", image)

# get/set bgr one pixel value
(b, g, r) = image[0, 0]
print("Pixel at (0, 0). B:{}, G:{}, R:{}".format(b, g, r))

image[0, 0] = (0, 0, 255)
(b, g, r) = image[0, 0]
print("Pixel at (0, 0). B:{}, G:{}, R:{}".format(b, g, r))

# get/set multiple bgr pixel values
corner = image[0:100, 0:100] # top left corner
cv2.imshow("corner", corner)

image[0:100, 0:100] = (0, 255, 0)

cv2.imshow("updated", image)
cv2.waitKey(0)