from __future__ import print_function
from matplotlib import pyplot as plt 
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

# split channels
channels = cv2.split(image)
colors = ("b", "g", "r")

# create histogram of each color channel
plt.title("flattened color histograms")
plt.xlabel("bins")
plt.ylabel("# of pixels")

for (channel, color) in zip(channels, colors):
	hist = cv2.calcHist([channel], [0], None, [256], [0,256])
	plt.plot(hist, color=color)
	plt.xlim([0,256])

plt.show()
cv2.waitKey(0)