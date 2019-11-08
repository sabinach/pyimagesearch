from __future__ import print_function
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

# get coin edges
edged = cv2.Canny(image, 30,  150)
cv2.imshow("edges", edged)

# get contours
# type of contours: cv2.RETR_EXTERNAL (outermost), cv2.RETR_LIST (all)
# cv2.CHAIN_APPROX_SIMPLE: compress horizontal, vertical, and diagonal segments into their end- points only.
(contours, _) = cv2.findContours(edged.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
print("I count {} coins in this image".format(len(contours)))

# draw contours
coins = image.copy()
cv2.drawContours(coins, contours, -1, (0, 255, 0), 2)
cv2.imshow("Coins", coins)
cv2.waitKey(0)

# crop each individual coin fromt hei mage
for (i, c) in enumerate(contours):
	(x, y, w, h) = cv2.boundingRect(c)

	print("Coin #{}".format(i + 1))
	coin = image[y:y + h, x:x + w]
	cv2.imshow("Coin", coin)

	mask = np.zeros(image.shape[:2], dtype = "uint8")
	((centerX, centerY), radius) = cv2.minEnclosingCircle(c)

# draw circle for each contour
cv2.circle(mask, (int(centerX), int(centerY)), int(radius), 255, -1)
mask = mask[y:y + h, x:x + w]
cv2.imshow("Masked Coin", cv2.bitwise_and(coin, coin, mask = mask))
cv2.waitKey(0)