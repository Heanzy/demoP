from GUI2 import GUI2MainWindow
from PyQt5 import QtWidgets
from PyQt5.QtCore import *
from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from Services2 import *
import sys
from matlab import engine
def run1(GUI2):
    initSignal(GUI2)
    eng = engine.start_matlab()
    eng.cd(r'.\2')
    def send1():
        GUI2.signal1.emit(eng)

    def send2():
        GUI2.signal2.emit(eng)

    def send3():
        GUI2.signal3.emit(eng)

    def send4():
        GUI2.signal4.emit(eng)

    def send5():
        GUI2.signal5.emit(eng)


    GUI2.firstButton1.clicked.connect(send1)
    GUI2.secondButton1.clicked.connect(send2)
    GUI2.secondButton2.clicked.connect(send3)
    GUI2.thirdButton1.clicked.connect(send4)
    GUI2.thirdButton2.clicked.connect(send5)

def initSignal(GUI2:GUI2MainWindow):
    GUI2.signal1.connect(Service1)
    GUI2.signal2.connect(Service2)
    GUI2.signal3.connect(Service3)
    GUI2.signal4.connect(Service4)
    GUI2.signal5.connect(Service5)



def test():
    print("ok")
if __name__ == "__main__":
    app = QApplication(sys.argv)
    gui = GUI2MainWindow()
    gui.show()
    run1(gui)
    sys.exit(app.exec_())