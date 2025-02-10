#-------------------------------------------------
#
# Project created by QtCreator 2019-04-22T16:13:03
#
#-------------------------------------------------

QT += core gui sql network multimedia widgets core5compat
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QQ
TEMPLATE = app

# 如果您使用 Qt 中任何已标记为弃用的功能，以下定义将使您的编译器发出警告（确切的警告取决于您的编译器）。请查阅已弃用的 API 的文档，以了解如何将您的代码从中移植出去。
DEFINES += QT_DEPRECATED_WARNINGS

# 如果使用弃用的 API，也可以使代码编译失败。
# 为此，请取消注释以下行。
# 您还可以选择仅禁用 Qt 某个版本之前的弃用 API。
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000 # 禁用 Qt 6.0.0 之前弃用的所有 API

CONFIG += c++17

HEADERS += \
    mainui.h \
    leftbar.h \
    database.h \
    clientsocket.h \
    settingswnd.h

SOURCES += \
    main.cpp \
    mainui.cpp \
    leftbar.cpp \
    database.cpp \
    clientsocket.cpp \
    settingswnd.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    resource/login_ui/login_ui.qrc \
    qss.qrc \
    icons.qrc

RC_ICONS = exe.ico #exe图标文件

include($$PWD/basewidget/basewidget.pri)
include($$PWD/cell/cell.pri)
include($$PWD/comapi/comapi.pri)
include($$PWD/login/login.pri)
include($$PWD/midbar/midbar.pri)
include($$PWD/rightbar/rightbar.pri)
include($$PWD/titlebar/titlebar.pri)

DESTDIR         = $$PWD/release/QQ
#OBJECTS_DIR     = $$PWD/release/obj
#MOC_DIR         = $$PWD/release/moc
#UI_DIR          = $$PWD/release/ui
#RCC_DIR         = $$PWD/release/rcc
