#-------------------------------------------------
#
# Project created by QtCreator 2019-06-20T20:24:38
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = EmptyOpenCVProject
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

FORMS += \
        mainwindow.ui

INCLUDEPATH += C:\OpenCV-4.0.1\opencv\build\include

LIBS += C:\OpenCV-4.0.1\opencv-build\bin\libopencv_core401.dll
LIBS += C:\OpenCV-4.0.1\opencv-build\bin\libopencv_highgui401.dll
LIBS += C:\OpenCV-4.0.1\opencv-build\bin\libopencv_imgcodecs401.dll
LIBS += C:\OpenCV-4.0.1\opencv-build\bin\libopencv_imgproc401.dll
LIBS += C:\OpenCV-4.0.1\opencv-build\bin\libopencv_features2d401.dll
LIBS += C:\OpenCV-4.0.1\opencv-build\bin\libopencv_calib3d401.dll

# more correct variant, how set includepath and libs for mingw
# add system variable: OPENCV_SDK_DIR=C:/OpenCV 4.0.1/opencv-build/install
# read http://doc.qt.io/qt-5/qmake-variable-reference.html#libs

#INCLUDEPATH += $$(OPENCV_SDK_DIR)/include

#LIBS += -L$$(OPENCV_SDK_DIR)/x86/mingw/lib \
#        -lopencv_core320        \
#        -lopencv_highgui320     \
#        -lopencv_imgcodecs320   \
#        -lopencv_imgproc320     \
#        -lopencv_features2d320  \
#        -lopencv_calib3d320

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
