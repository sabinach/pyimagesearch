from __future__ import print_function
import numpy as np 
import argparse
import mahotas
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

# otsu's method assumes 2 peaks in grayscale histogram
# finds optimal value to separate these two peaks -> our value T
T = mahotas.thresholding.otsu(blurred)
print("otsu's threshold: {}".format(T))

# apply threshold from otsu
thresh = image.copy()
thresh[thresh > T] = 255
thresh[thresh < 255] = 0
thresh = cv2.bitwise_not(thresh)
cv2.imshow("Otsu", thresh)

# use Riddler-Calvard method
T = mahotas.thresholding.rc(blurred)
print("Riddler-Calvard: {}".format(T))

# apply threshold from Riddler-Calvard
thresh = image.copy()
thresh[thresh > T] = 255
thresh[thresh < 255] = 0
thresh = cv2.bitwise_not(thresh)
cv2.imshow("Riddler-Calvard", thresh)
cv2.waitKey(0)

