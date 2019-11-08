from __future__ import print_function
import argparse
import cv2

# RUN: python 01-load_display_save.py -i "doraemon.png"

# create argument parsers
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--image", required=True, help="Path to the image")
args = vars(parser.parse_args())

# find dimensions of input image
image = cv2.imread(args["image"])
print("height: {} pixels".format(image.shape[0])) #rows
print("width: {} pixels".format(image.shape[1])) #cols
print("channels: {}".format(image.shape[2]))

# display image, 'ESC' to exit
cv2.imshow("Image", image)
cv2.waitKey(0)

# save image
cv2.imwrite(args["image"].split('.')[0]+'.jpg', image)

