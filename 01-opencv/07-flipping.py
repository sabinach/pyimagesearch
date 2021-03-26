import argparse
import cv2

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--image", required=True, help="Path to the image")
args = vars(parser.parse_args())

# show original image
image = cv2.imread(args["image"])
cv2.imshow("original", image)
cv2.waitKey(0)

# flip horizontally
flipped = cv2.flip(image, 1)
cv2.imshow("flipped horizontally", flipped)
cv2.waitKey(0)

# flip vertically
flipped = cv2.flip(image, 0)
cv2.imshow("flipped vertically", flipped)
cv2.waitKey(0)

# flipped horiz + vert
flipped = cv2.flip(image, -1)
cv2.imshow("flipped horizontally + vertically", flipped)
cv2.waitKey(0)