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

# AVERAGE BLURRING (simple mean)
# use convolution kernel kxk to slide/blur image
# use np.hstack to horizontally stack three images in a row
blurred = np.hstack([
    cv2.blur(image, (3, 3)),
    cv2.blur(image, (5, 5)),
    cv2.blur(image, (7, 7))])
cv2.imshow("Averaged", blurred)
cv2.waitKey(0)

# GAUSSIAN BLURRING (weighted mean) -- natural blur
# sigma: standard deviation in x-axis direction (0: auto computer based on kernel size)
blurred = np.hstack([
	cv2.GaussianBlur(image, (3, 3), 0),
	cv2.GaussianBlur(image, (5, 5), 0),
	cv2.GaussianBlur(image, (7, 7), 0)])
cv2.imshow("Gaussian", blurred)
cv2.waitKey(0)

# MEDIAN BLURRING (replace central pixel w/ median of neighborhood)
# good for removing salt-and-pepper style noise
# no motion blur (as seen in avg/gaussian blur), instead removes detail and noise
blurred = np.hstack([
    cv2.medianBlur(image, 3),
    cv2.medianBlur(image, 5),
    cv2.medianBlur(image, 7)])
cv2.imshow("Median", blurred)
cv2.waitKey(0)

# BILATERAL BLURRING (maintain edges while removing noise)
# 2 gaussian distributions: a) spatial neighbors, b) pixel intensity
# slower than previous blurring counterparts
# 3rd arg: color sigma; 4th arg: space sigma
blurred = np.hstack([
    cv2.bilateralFilter(image, 5, 21, 21),
    cv2.bilateralFilter(image, 7, 31, 31),
    cv2.bilateralFilter(image, 9, 41, 41)])
cv2.imshow("Bilateral", blurred)
cv2.waitKey(0)