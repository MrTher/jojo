#{
#
#   PY script to extract text from the ms paint window
#   
#   runs when the JS server gets an HTTP get request
# 
#   @MrTher#4576
# 
# }

# dependencies

import pytesseract
from PIL import ImageGrab
from win32 import win32gui
import time

# init

pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract'


def convert(link):
    return pytesseract.image_to_string(link)


def screenshot():
    toplist, winlist = [], []

    def enum_cb(hwnd, results):
        winlist.append((hwnd, win32gui.GetWindowText(hwnd)))

    win32gui.EnumWindows(enum_cb, toplist)

    for window in winlist:
        if "paint" in window[1].lower():
            win32gui.ShowWindow(window[0], 50)
            win32gui.SetForegroundWindow(window[0])

            time.sleep(2)

            bbox = (0, 237, 1919, 979)
            img = ImageGrab.grab(bbox)


            return img


print(convert(screenshot()))
