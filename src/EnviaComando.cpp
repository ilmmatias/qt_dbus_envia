#include <QDBusConnection>
#include <QDBusMessage>

#include "EnviaComando.hpp"
#include "envia_recebe_adaptor.h"

EnviaComando::EnviaComando(void) {
    /* Validate if D-Bus is properly setup in the host; We should have a session bus accessible
       if that's the case. */
    if (!QDBusConnection::sessionBus().isConnected()) {
        qFatal("Cannot connect to the D-Bus session bus.");
    }

    /* Add our D-Bus interface. */
    new Envia_recebeAdaptor(this);
    QDBusConnection::sessionBus().registerObject("/", this);
}

void EnviaComando::sendPublication(const QString &topic, const QString &contents) {
    /* Synchronous send (for async we would setup an iface on the constructor, and use it
       instead). */
    QDBusMessage msg = QDBusMessage::createSignal("/", "com.ilmmatias.envia_recebe", "publicar");
    msg << topic << contents;
    QDBusConnection::sessionBus().send(msg);
}
