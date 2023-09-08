#include <QFile>
#include <QUrl>

#include "CarregaArquivo.hpp"

void CarregaArquivo::loadFile(const QString &path) {
    QFile file = QFile(QUrl(path).toLocalFile());

    /* Tell QT to convert windows-style newlines (\r\n) to unix/C++ style (\n). */
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        return;
    }

    /* Then we just need to read all bytes (probably UTF-8). */
    m_fileContents = file.readAll();
}

QString CarregaArquivo::fileContents(void) {
    return m_fileContents;
}
