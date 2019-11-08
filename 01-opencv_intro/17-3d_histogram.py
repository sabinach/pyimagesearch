from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt 
import numpy as np 
import argparse
import cv2

# RUN: python3 17-3d_histogram.py -i "doraemon.png"

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--image", required=True, help="path to the image")
parser.add_argument("-s", "--size", required=False, help="size of largest color bin", default=5000)
parser.add_argument("-b", "--bins", required=False, help="number of binns per color channel", default=8)
args = vars(parser.parse_args())

# show image
image = cv2.imread(args["image"])
cv2.imshow("original", image)

# get parsed data
size = float(args["size"])
bins = int(args["bins"])

# create 3d histogram
hist = cv2.calcHist([image], [0, 1, 2], None, [bins, bins, bins], [0, 256, 0, 256, 0, 256])
print("3D histogram shape: %s, with %d values" % (hist.shape, hist.flatten().shape[0]))

# visualize 3d color histogram
# initialize figure
fig = plt.figure()
ax = fig.add_subplot(111, projection="3d")

# compute ratio of input size to max bin count
ratio = size / np.max(hist)

# loop pover each of three axes, check if there is at least onen entry
for (x, plane) in enumerate(hist):
	for (y, row) in enumerate(plane):
		for (z, col) in enumerate(row):
			if hist[x][y][z] > 0.0:
				siz = ratio * hist[x][y][z]
				rgb = (z / (bins - 1), y / (bins - 1), x / (bins - 1))
				ax.scatter(x, y, z, s = siz, facecolors = rgb)

# show image + histogram
plt.show()
cv2.waitKey(0)

