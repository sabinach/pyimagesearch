import numpy as np
import argparse
import imutils
import cv2

# RUN: python3 04-translation.py -i "doraemon.png"

# parse input
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--image", required=True, help="Path to the image")
args = vars(parser.parse_args())

# show original image
image = cv2.imread(args["image"])
cv2.imshow("original", image)
cv2.waitKey(0)

# shift down + right
M = np.float32([[1, 0, 25],
				[0, 1, 50]])
shifted = cv2.warpAffine(image, M, (image.shape[1], image.shape[0]))
cv2.imshow("shifted down and right", shifted)
cv2.waitKey(0)

# shift up + left
M = np.float32([[1, 0, -50],
	 			[0, 1, -90]])
shifted = cv2.warpAffine(image, M, (image.shape[1], image.shape[0]))
cv2.imshow("shifted up and left", shifted)
cv2.waitKey(0)

# shift down (using imutils translate)
shifted = imutils.translate(image, 0, 100)
cv2.imshow("shifted down", shifted)
cv2.waitKey(0)