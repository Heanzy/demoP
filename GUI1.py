from PyQt5 import QtWidgets
from PyQt5.QtCore import *
from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
import sys
class GUI1MainWindow(QWidget):
    signal1 = pyqtSignal(object)
    signal2 = pyqtSignal(object)
    signal3 = pyqtSignal(object)
    signal4 = pyqtSignal(object)
    signal5 = pyqtSignal(object)
    def __init__(self):
        super(GUI1MainWindow,self).__init__()
        self.setObjectName("主窗口")
        self.setWindowTitle("适用于大气污染物的客观天气分型统计软件V1.0")
        self.resize(700,600)
        self.firstButton1 = QtWidgets.QPushButton()
        self.firstButton1.setMinimumSize(350,150)
        self.firstButton1.setStyleSheet("QPushButton{font-family:'宋体';font-size:48px;color:rgb(0,0,0,255);}\QPushButton{background-color:rgb(117,133,109)}\ QPushButton:hover{background-color:rgb(50, 170, 200)}")
        self.firstButton1.setText("Whole Year")
        #self.firstButton2 = QtWidgets.QPushButton()
        hlayout1 = QHBoxLayout()
        hlayout1.addWidget(self.firstButton1)
        #hlayout1.addWidget(self.firstButton2)

        self.secondButton1 = QtWidgets.QPushButton()
        self.secondButton1.setStyleSheet(
            "QPushButton{font-family:'宋体';font-size:48px;color:rgb(0,0,0,255);}\QPushButton{background-color:rgb(117,133,109)}"
            "\ QPushButton:hover{background-color:rgb(50, 170, 200)}")
        self.secondButton1.setText("Winter")
        self.secondButton1.setMinimumSize(350, 150)
        self.secondButton2 = QtWidgets.QPushButton()
        self.secondButton2.setStyleSheet(
            "QPushButton{font-family:'宋体';font-size:48px;color:rgb(0,0,0,255);}\QPushButton{background-color:rgb(117,133,109)}"
            "\ QPushButton:hover{background-color:rgb(50, 170, 200)}")
        self.secondButton2.setText("Spring")
        self.secondButton2.setMinimumSize(350, 150)
        hlayout2 = QHBoxLayout()
        hlayout2.addWidget(self.secondButton1)
        hlayout2.addWidget(self.secondButton2)

        self.thirdButton1 = QtWidgets.QPushButton()
        self.thirdButton1.setStyleSheet(
            "QPushButton{font-family:'宋体';font-size:48px;color:rgb(0,0,0,255);}\QPushButton{background-color:rgb(117,133,109)}"
            "\ QPushButton:hover{background-color:rgb(50, 170, 200)}")
        self.thirdButton1.setText("Summer")
        self.thirdButton1.setMinimumSize(350, 150)
        self.thirdButton2 = QtWidgets.QPushButton()
        self.thirdButton2.setStyleSheet(
            "QPushButton{font-family:'宋体';font-size:48px;color:rgb(0,0,0,255);}\QPushButton{background-color:rgb(117,133,109)}"
            "\ QPushButton:hover{background-color:rgb(50, 170, 200)}")
        self.thirdButton2.setText("Autum")
        self.thirdButton2.setMinimumSize(350, 150)
        hlayout3 = QHBoxLayout()
        hlayout3.addWidget(self.thirdButton1)
        hlayout3.addWidget(self.thirdButton2)

        self.vlayout = QVBoxLayout()
        self.vlayout.addLayout(hlayout1)
        self.vlayout.addLayout(hlayout2)
        self.vlayout.addLayout(hlayout3)
        self.setLayout(self.vlayout)
