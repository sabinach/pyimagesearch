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

# any gradient value larger than threshold2 is considered to be an edge
# anny value below threshold1 is considered not an edge
# makes edges more "crisp"
canny = cv2.Canny(image, 30,  150)
cv2.imshow("canny", canny)
cv2.waitKey(0)

