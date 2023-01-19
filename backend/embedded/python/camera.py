# camera.py

import cv2

class VideoCamera(object):
    def __init__(self):
        self.video = cv2.VideoCapture(0)

    def __del__(self):
        self.video.release()

    def destroy(self):
        self.video.release()

    def get_frame(self):
        # Grab a single frame of video
        ret, frame = self.video.read()
        return frame

if __name__ == '__main__':
    cam = VideoCamera()
    while True:
        frame = cam.get_frame()

        # show the frame
        cv2.imshow("Frame", frame)
        key = cv2.waitKey(1) & 0xFF

        # if the `q` key was pressed, break from the loop
        if key == ord("q"):
            cam.destroy()
            break

    # do a bit of cleanup

    cv2.destroyAllWindows()

    print('finish')
