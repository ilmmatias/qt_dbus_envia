QT += dbus quick quickcontrols2
CONFIG += qmltypes

HEADERS = include/CarregaArquivo.hpp include/EnviaComando.hpp
INCLUDEPATH += include

SOURCES = src/main.cpp src/CarregaArquivo.cpp src/EnviaComando.cpp
OTHER_FILES = qml/main.qml qml/Principal.qml qml/AbreArquivo.qml qml/TransmiteComando.qml
RESOURCES = envia_qml.qrc

QML_IMPORT_NAME = com.ilmmatias.envia
QML_IMPORT_MAJOR_VERSION = 1
QML_IMPORT_MINOR_VERSION = 0

DBUS_ADAPTORS += com.ilmmatias.envia_recebe.xml
DBUS_INTERFACES += com.ilmmatias.envia_recebe.xml
