import numpy as np 
import argparse
import cv2

# parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--image", required=True, help="Path to the image")
args = vars(parser.parse_args())

# get bgr channels
image = cv2.imread(args["image"])
(b, g, r) = cv2.split(image)

# show image channels
cv2.imshow("blue", b)
cv2.imshow("green", g)
cv2.imshow("red", r)
cv2.waitKey(0)

# merge all channels
merged = cv2.merge([b, g, r])
cv2.imshow("merged", merged)
cv2.waitKey(0)

cv2.destroyAllWindows()

# show actual "color" of the channel
zeros = np.zeros(image.shape[:2], dtype="uint8")
cv2.imshow("blue", cv2.merge([b, zeros, zeros]))
cv2.imshow("green", cv2.merge([zeros, g, zeros]))
cv2.imshow("red", cv2.merge([zeros, zeros, r]))
cv2.waitKey(0)