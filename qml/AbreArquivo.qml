import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3
import QtQuick.Layouts 1.15

import com.ilmmatias.envia 1.0

Page {
    CarregaArquivo { id: "carregaArquivo" }

    FileDialog {
        id: fileDialog
        title: qsTr("Escolha um arquivo")
        onAccepted: {
            carregaArquivo.loadFile(fileDialog.fileUrls)
            textArea.text = carregaArquivo.fileContents
        }
    }

    ColumnLayout {
        anchors.fill: parent

        ScrollView {
            Layout.fillWidth: true
            Layout.fillHeight: true

            TextArea {
                id: "textArea"
                readOnly: true
                selectByKeyboard: true
                selectByMouse: true
            }
        }

        Row {
            Layout.alignment: Qt.AlignHCenter
            padding: 4
            spacing: 4

            Button {
                text: qsTr("Voltar")
                onClicked: stackView.pop()
            }

            Button {
                text: qsTr("Abrir Arquivo")
                onClicked: fileDialog.open()
            }
        }
    }
}
