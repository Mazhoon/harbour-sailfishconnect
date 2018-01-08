# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = SailfishConnect

CONFIG += sailfishapp c++14
QT += network
PKGCONFIG += openssl

SOURCES += src/SailfishConnect.cpp \
    src/core/backend/lan/landevicelink.cpp \
    src/core/backend/lan/lanlinkprovider.cpp \
    src/core/backend/lan/lanpairinghandler.cpp \
    src/core/backend/lan/socketlinereader.cpp \
    src/core/backend/devicelinereader.cpp \
    src/core/backend/devicelink.cpp \
    src/core/backend/linkprovider.cpp \
    src/core/backend/pairinghandler.cpp \
    src/core/device.cpp \
    src/core/kdeconnectconfig.cpp \
    src/core/kdeconnectplugin.cpp \
    src/core/kdeconnectpluginconfig.cpp \
    src/core/networkpackage.cpp \
    src/core/corelogging.cpp \
    src/core/backend/lan/server.cpp \
    src/core/daemon.cpp \
    src/utils/sslhelper.cpp \
    src/appdaemon.cpp \
    src/ui/devicelistmodel.cpp \
    src/core/backend/lan/downloadjob.cpp \
    src/core/backend/lan/uploadjob.cpp

DISTFILES += qml/SailfishConnect.qml \
    qml/cover/CoverPage.qml \
    rpm/SailfishConnect.changes.in \
    rpm/SailfishConnect.changes.run.in \
    rpm/SailfishConnect.spec \
    rpm/SailfishConnect.yaml \
    translations/*.ts \
    SailfishConnect.desktop \
    qml/pages/DevicePage.qml \
    qml/pages/DeviceListPage.qml

SAILFISHAPP_ICONS = 86x86 108x108 128x128

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/SailfishConnect-de.ts

HEADERS += \
    src/core/backend/lan/landevicelink.h \
    src/core/backend/lan/lanlinkprovider.h \
    src/core/backend/lan/lanpairinghandler.h \
    src/core/backend/lan/socketlinereader.h \
    src/core/backend/devicelinereader.h \
    src/core/backend/devicelink.h \
    src/core/backend/linkprovider.h \
    src/core/backend/pairinghandler.h \
    src/core/device.h \
    src/core/kdeconnectconfig.h \
    src/core/kdeconnectplugin.h \
    src/core/kdeconnectpluginconfig.h \
    src/core/networkpackage.h \
    src/core/networkpackagetypes.h \
    src/core/corelogging.h \
    src/core/backend/lan/server.h \
    src/core/daemon.h \
    src/utils/asconst.h \
    src/utils/sslhelper.h \
    src/appdaemon.h \
    src/ui/devicelistmodel.h \
    src/core/backend/lan/downloadjob.h \
    src/core/backend/lan/uploadjob.h
