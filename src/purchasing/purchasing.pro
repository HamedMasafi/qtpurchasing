TARGET = QtPurchasing
QT = core

load(qt_module)

ANDROID_BUNDLED_JAR_DEPENDENCIES = \
    jar/QtPurchasing-bundled.jar
ANDROID_JAR_DEPENDENCIES = \
    jar/QtPurchasing.jar

HEADERS += \
    $$PWD/qtpurchasingglobal.h

include(inapppurchase/inapppurchase.pri)