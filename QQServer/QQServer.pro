#-------------------------------------------------
#
# 项目由 QtCreator 创建 2019-05-07T17:54:01
#
#-------------------------------------------------

QT       += core gui sql network widgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QQServer
TEMPLATE = app

# 以下定义会在您使用
# 任何已被标记为废弃的 Qt 功能时，下面的定义会让编译器发出警告（具体的警告语
# 取决于编译器）。请查阅
# 过时的 API 的文档，以了解如何将代码从该 API 移植过来.
DEFINES += QT_DEPRECATED_WARNINGS

# 如果使用了过时的 API，也可以使代码无法编译。
# 为此，请取消下面一行的注释。
# 您也可以选择只在 Qt 的某个版本之前禁用已废弃的 API。
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000 # 禁用 Qt 6.0.0 之前所有已废弃的 API。

CONFIG += c++11

SOURCES += \
        main.cpp \
        mainui.cpp \
    database.cpp \
    tcpserver.cpp \
    clientsocket.cpp \
    myapp.cpp

HEADERS += \
        mainui.h \
    database.h \
    tcpserver.h \
    clientsocket.h \
    global.h \
    unit.h \
    myapp.h

# 部署的默认规则。
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


RC_ICONS = server.ico #exe图标文件

DESTDIR         = $$PWD/release/QQServer
