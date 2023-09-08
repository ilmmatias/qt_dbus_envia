#pragma once

#include <QObject>
#include <qqml.h>

struct EnviaComando : public QObject {
    Q_OBJECT
    QML_ELEMENT

public:
    EnviaComando(void);

public slots:
    void sendPublication(const QString &topic, const QString &contents);
};
