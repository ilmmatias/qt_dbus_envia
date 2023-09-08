import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import com.ilmmatias.envia 1.0

Page {
    EnviaComando { id: "enviaComando" }

    Column {
        anchors.centerIn: parent
        spacing: 16

        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 4

            Text { text: qsTr("<b>Tópico</b>") }
            TextField {
                id: "topico"
                focus: true
            }
        }

        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 4

            Text { text: qsTr("<b>Conteúdo: </b>") }
            TextField {
                id: "conteudo"
            }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 8

            Button {
                text: qsTr("Voltar")
                onClicked: stackView.pop()
            }

            Button {
                text: qsTr("Enviar")
                onClicked: {
                    enviaComando.sendPublication(topico.text, conteudo.text)
                    topico.text = ""
                    conteudo.text = ""
                }
            }
        }
    }
}
