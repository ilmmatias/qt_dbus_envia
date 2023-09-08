import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Page {
    Row {
        anchors.centerIn: parent
        spacing: 16

        Button {
            text: qsTr("Abrir Arquivo")
            onClicked: stackView.push(abreArquivo)
        }

        Button {
            text: qsTr("Enviar Comando")
            onClicked: stackView.push(transmiteComando)
        }

        Button {
            text: qsTr("Encerrar")
            onClicked: Qt.quit()
        }
    }
}
