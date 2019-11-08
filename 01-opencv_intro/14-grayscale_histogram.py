from matplotlib import pyplot as plt 
import argparse
import cv2

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--image", required=True, help="Path to the image")
args = vars(parser.parse_args())

# show original image
image = cv2.imread(args["image"])

image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
cv2.imshow("original", image)

# 256 bins, possible ranges: 0-256
hist = cv2.calcHist([image], [0], None, [256], [0, 256])

# x-axis: bins 0-255
# y-axis: # of pixels in each bin
plt.figure()
plt.title("grayscale histogram")
plt.xlabel("bins")
plt.ylabel("# of pixels")
plt.plot(hist)
plt.xlim([0,256])
plt.show()
cv2.waitKey(0)