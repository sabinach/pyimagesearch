from matplotlib import pyplot as plt 
import numpy as np 
import argparse
import cv2

# compute and plot histogram for each channel
def plot_histogram(image, title, mask = None):
	channels = cv2.split(image)
	colors = ("b", "g", "r")
	plt.figure()
	plt.title(title)
	plt.xlabel("Bins")
	plt.ylabel("# of Pixels")

	for (channel, color) in zip(channels, colors):
		hist = cv2.calcHist([channel], [0], mask, [256], [0, 256])
		plt.plot(hist, color = color)
		plt.xlim([0, 256])

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--image", required=True, help="Path to the image")
args = vars(parser.parse_args())

# show original image
image = cv2.imread(args["image"])
cv2.imshow("original", image)

# plot original image histogram
plot_histogram(image, "histogram for original image")

# create rectangle mask
mask = np.zeros(image.shape[:2], dtype = "uint8")
cv2.rectangle(mask, (100, 100), (170, 170), 255, -1)
cv2.imshow("Mask", mask)

# mask image 
masked = cv2.bitwise_and(image, image, mask = mask)
cv2.imshow("Applying the Mask", masked)

# plot masked image histogram (only white portions of mask will be considered in histogram)
plot_histogram(image, "histogram for masked image", mask)

# show plot
plt.show()