import cv2
import numpy as np

vid = cv2.VideoCapture(0)

vid.set(cv2.CAP_PROP_FRAME_WIDTH, 320)
vid.set(cv2.CAP_PROP_FRAME_HEIGHT, 180)
vid.set(cv2.CAP_PROP_FPS, 25)

print(vid.get(cv2.CAP_PROP_FPS))
print(vid.get(cv2.CAP_PROP_FRAME_WIDTH))

while True:
    ret, frame = vid.read()
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    # Display the resulting frame
    cv2.imshow('frame', gray)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

vid.release()
cv2.destroyAllWindows()
