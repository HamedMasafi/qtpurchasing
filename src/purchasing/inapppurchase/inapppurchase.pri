INCLUDEPATH += $$PWD

ANDROID_PERMISSIONS += \
#    Google play
    com.android.vending.BILLING \
#    Cafe baazar
    com.farsitel.bazaar.permission.PAY_THROUGH_BAZAAR \
#    Iran apps
    ir.tgbs.iranapps.permission \
#    Myket
	ir.mservices.market.BILLING

HEADERS += \
    $$PWD/qinappstore.h \
    $$PWD/qinappproduct.h \
    $$PWD/qinapptransaction.h \
    $$PWD/qinappstore_p.h \
    $$PWD/qinapppurchasebackend_p.h \
    $$PWD/qinapppurchasebackendfactory_p.h

SOURCES += \
    $$PWD/qinappproduct.cpp \
    $$PWD/qinapptransaction.cpp \
    $$PWD/qinappstore.cpp \
    $$PWD/qinapppurchasebackend.cpp \
    $$PWD/qinapppurchasebackendfactory.cpp

android {
    QT += androidextras
    include ($$PWD/android/android.pri)
}

darwin:!watchos {
     include ($$PWD/mac/mac.pri)
 }

winrt {
    include ($$PWD/winrt/winrt.pri)
}