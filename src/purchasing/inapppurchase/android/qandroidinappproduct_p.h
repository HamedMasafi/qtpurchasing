/****************************************************************************
**
** Copyright (C) 2014 Digia Plc
** All rights reserved.
** For any questions to Digia, please use contact form at http://qt.digia.com
**
** This file is part of the Qt Purchasing Add-on.
**
** $QT_BEGIN_LICENSE$
** Licensees holding valid Qt Commercial licenses may use this file in
** accordance with the Qt Commercial License Agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and Digia.
**
** If you have questions regarding the use of this file, please use
** contact form at http://qt.digia.com
** $QT_END_LICENSE$
**
****************************************************************************/

#ifndef QANDROIDINAPPPRODUCT_P_H
#define QANDROIDINAPPPRODUCT_P_H

//
//  W A R N I N G
//  -------------
//
// This file is not part of the Qt API.  It exists purely as an
// implementation detail.  This header file may change from version to
// version without notice, or even be removed.
//
// We mean it.
//

#include "qinappproduct.h"

QT_BEGIN_NAMESPACE

class QAndroidInAppPurchaseBackend;
class QAndroidInAppProduct : public QInAppProduct
{
    Q_OBJECT
public:
    explicit QAndroidInAppProduct(QAndroidInAppPurchaseBackend *backend,
                                  const QString &price,
                                  ProductType productType,
                                  const QString &identifier,
                                  QObject *parent = 0);


    void purchase();

private:
    QAndroidInAppPurchaseBackend *m_backend;
};

QT_END_NAMESPACE

#endif // QANDROIDINAPPPRODUCT_P_H