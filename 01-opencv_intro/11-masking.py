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

# create mask
mask = np.zeros(image.shape[:2], dtype="uint8")
(center_x, center_y) = (image.shape[1] // 2, image.shape[0] // 2)
cv2.rectangle(mask, (center_x-75, center_y-75), (center_x+75, center_y+75), 255, -1)
cv2.imshow("mask", mask)
cv2.waitKey(0)

# apply rectangle mask
masked = cv2.bitwise_and(image, image, mask=mask)
cv2.imshow("mask applied to image", masked)
cv2.waitKey(0)

# apply circle mask
mask = np.zeros(image.shape[:2], dtype="uint8")
cv2.circle(mask, (center_x, center_y), 100, 255, -1)
masked = cv2.bitwise_and(image, image, mask=mask)
cv2.imshow("mask", mask)
cv2.imshow("mask applied to image", masked)
cv2.waitKey(0)