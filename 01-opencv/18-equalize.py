import numpy as np 
import argparse
import cv2

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--image", required=True, help="Path to the image")
args = vars(parser.parse_args())

# show original image
image = cv2.imread(args["image"])

# convert to grayscale
image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

# equalize grayscale image (create more contrast)
eq = cv2.equalizeHist(image)

# display histogram equalized image
cv2.imshow("histogram equalization", np.hstack([image, eq]))
cv2.waitKey(0)