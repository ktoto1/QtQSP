! include( ../common.pri ) {
    error("Couldn't find the common.pri file!")
}

QT += widgets

win32 {
	RC_FILE  = misc/win32/resource.rc
    DEFINES += _WINDOWS
}

RESOURCES = misc/main_window.qrc

DEFINES += _UNICODE

PRECOMPILED_HEADER = src/stdafx.h

CONFIG(debug, debug|release) {
    LIBS += -L../debug/ -lqsp
} else {
    LIBS += -L../release/ -lqsp
}

HEADERS = \
    src/callbacks_gui.h \
    src/main_window.h \
    src/qsp.h \
    src/qsp_default.h \
    src/qsp_imgcanvas.h \
    src/qsp_inputbox.h \
    src/qsp_inputdlg.h \
    src/qsp_listbox.h \
    src/qsp_listitemdelegate.h \
    src/qsp_textbox.h \
    src/qsp_tools.h

SOURCES = \
	src/callbacks_gui.cpp \
    src/main.cpp \
    src/main_window.cpp \
    src/qsp_imgcanvas.cpp \
    src/qsp_inputbox.cpp \
    src/qsp_inputdlg.cpp \
    src/qsp_listbox.cpp \
    src/qsp_listitemdelegate.cpp \
    src/qsp_textbox.cpp \
    src/qsp_tools.cpp

OTHER_FILES += \
    misc/win32/resource.rc \
    misc/icons/about.xpm \
    misc/icons/exit.xpm \
    misc/icons/logo.ico \
    misc/icons/new.xpm \
    misc/icons/open.xpm \
    misc/icons/statusopen.xpm \
    misc/icons/statussave.xpm \
    misc/icons/windowmode.xpm
