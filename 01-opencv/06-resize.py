import numpy as np 
import argparse
import imutils
import cv2

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--image", required=True, help="Path to the image")
args = vars(parser.parse_args())

# show original image
image = cv2.imread(args["image"])
cv2.imshow("original", image)
cv2.waitKey(0)

# resize via width
r = 150. / image.shape[1] # divide new width (150) by old width to get aspect ratio
dim = (150, int(image.shape[0]*r)) # (new width, old height*ratio)

# resize image
resized = cv2.resize(image, dim, interpolation=cv2.INTER_AREA)
cv2.imshow("resized(width)", resized)
cv2.waitKey(0)

# resize via height
r = 50. / image.shape[0]
dim = (int(image.shape[1]*r), 50)

# resize image
resized = cv2.resize(image, dim, interpolation=cv2.INTER_AREA)
cv2.imshow("resized(height)", resized)
cv2.waitKey(0)

# resize image via imutils resize function
resized = imutils.resize(image, height=150)
cv2.imshow("resized via function", resized)
cv2.waitKey(0)