from __future__ import print_function
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

# arithmetic via cv2
print("CV2 max of 255: {}".format(cv2.add(np.uint8([200]), np.uint8([100]))))
print("CV2 min of 0: {}".format(cv2.subtract(np.uint8([50]), np.uint8([100]))))

# arithmetic via numpy 
print("Numpy wrap around: {}".format(np.uint8([200]) + np.uint8([100])))
print("Numpy wrap around: {}".format(np.uint8([50]), - np.uint8([100])))

# add image of all 100 pixels
M = np.ones(image.shape, dtype="uint8") * 100
added = cv2.add(image, M)
cv2.imshow("added", added)
cv2.waitKey(0)

M = np.ones(image.shape, dtype="uint8") * 50
subtracted = cv2.subtract(image, M)
cv2.imshow("subtracted", subtracted)
cv2.waitKey(0)
