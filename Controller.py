from GUI1 import GUI1MainWindow
from PyQt5 import QtWidgets
from PyQt5.QtCore import *
from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from Services import *
from matlab import engine
import sys

def run1(GUI1):
    initSignal(GUI1)
    eng = engine.start_matlab()
    eng.cd(r'.\1')
    def send1():
        GUI1.signal1.emit(eng)

    def send2():
        GUI1.signal2.emit(eng)

    def send3():
        GUI1.signal3.emit(eng)

    def send4():
        GUI1.signal4.emit(eng)

    def send5():
        GUI1.signal5.emit(eng)


    GUI1.firstButton1.clicked.connect(send1)
    GUI1.secondButton1.clicked.connect(send2)
    GUI1.secondButton2.clicked.connect(send3)
    GUI1.thirdButton1.clicked.connect(send4)
    GUI1.thirdButton2.clicked.connect(send5)

def initSignal(GUI1:GUI1MainWindow):
    GUI1.signal1.connect(Service1)
    GUI1.signal2.connect(Service2)
    GUI1.signal3.connect(Service3)
    GUI1.signal4.connect(Service4)
    GUI1.signal5.connect(Service5)



def test():
    print("ok")
if __name__ == "__main__":
    app = QApplication(sys.argv)
    gui = GUI1MainWindow()
    gui.show()
    run1(gui)
    sys.exit(app.exec_())