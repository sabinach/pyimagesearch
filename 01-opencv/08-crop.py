import numpy as np 
import argparse
import cv2

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--image", required=True, help="Path to the image")
args = vars(parser.parse_args())

# show original image
image = cv2.imread(args["image"])
cv2.imshow("original", image)
cv2.waitKey(0)

# crop image
cropped = image[30:120, 240:335]
cv2.imshow("cropped", cropped)
cv2.waitKey(0)