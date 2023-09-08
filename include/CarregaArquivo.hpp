#pragma once

#include <QObject>
#include <qqml.h>

struct CarregaArquivo : public QObject {
    Q_OBJECT
    QML_ELEMENT

    Q_PROPERTY(QString fileContents READ fileContents)

public slots:
    void loadFile(const QString &path);
    QString fileContents(void);

private:
    QString m_fileContents;
};
