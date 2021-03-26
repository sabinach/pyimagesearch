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
cv2.imshow("original", image)

# LAPLACIAN: compute gradian magnitude
# use 64-bit float, or else will miss edges
# black-to-white: positive slope, white-to-black: negative slope
# will miss edges if don't use floating point data type! (specifically for white-to-black transitions)
laplacian = cv2.Laplacian(image, cv2.CV_64F)
laplacian = np.uint8(np.absolute(laplacian))
cv2.imshow("Laplacian", laplacian)

# SOBEL: compute gradient along x/y axis (finds horizontal/vertical edge-like regions)
# specify 0 or 1 for x/y axis
sobel_x = cv2.Sobel(image, cv2.CV_64F, 1, 0)
sobel_y = cv2.Sobel(image, cv2.CV_64F, 0, 1)

# ensure we find all edges by taking the absolute value of floating point image
# convert to 8-bit unsigned integer
sobel_x = np.uint8(np.absolute(sobel_x))
sobel_y = np.uint8(np.absolute(sobel_y))

# true if either x/y pixel is true: will show BOTH x/y gradients
sobel_combined = cv2.bitwise_or(sobel_x, sobel_y)
cv2.imshow("Sobel X", sobel_x)
cv2.imshow("Sobel Y", sobel_y)
cv2.imshow("Sobel Combined", sobel_combined)
cv2.waitKey(0)