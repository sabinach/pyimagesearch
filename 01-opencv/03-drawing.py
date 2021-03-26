import numpy as np 
import cv2

# black canvas
canvas = np.zeros((300, 300, 3), dtype="uint8")

# green line
green = (0, 255, 0)
cv2.line(canvas, (0,0), (300,300), green)
cv2.imshow("green line", canvas)
cv2.waitKey(0)

# red line
red = (0, 0, 255)
cv2.line(canvas, (300,0), (0,300), red, 3)
cv2.imshow("+red line", canvas)
cv2.waitKey(0)

# green rectangle
cv2.rectangle(canvas, (10,10), (60,60), green)
cv2.imshow("+green rectangle", canvas)
cv2.waitKey(0)

# red rectangle
cv2.rectangle(canvas, (50,200), (200,225), red, 5)
cv2.imshow("+red rectangle", canvas)
cv2.waitKey(0)

# blue rectangle
blue = (255, 0, 0)
cv2.rectangle(canvas, (200,50), (225,125), blue, -1)
cv2.imshow("+blue rectangle", canvas)
cv2.waitKey(0)

#################################

# black canvas
canvas = np.zeros((300,300,3), dtype="uint8")

# get center coord of canvas
(center_x, center_y) = (canvas.shape[1]//2, canvas.shape[0]//2)
white = (255, 255,  255)

#radius: 0, 25, 50, 75, 100, 125, 150, 175
for radius in range(0, 175, 25):
	cv2.circle(canvas, (center_x, center_y), radius, white)

cv2.imshow("bullseye", canvas)
cv2.waitKey(0)

