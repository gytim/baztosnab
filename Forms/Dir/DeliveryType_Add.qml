import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.5
import QtQuick.Layouts 1.3

Dialog {
    title: qsTr("Добавить тип транспорта...")
    id: deliveryAddDialog

    modal: Qt.WindowModal

    width: 350
    height: 250

    anchors.centerIn: parent

    GridLayout {
        id: textArea

        width: parent.width

        anchors {
            top: parent.top
            bottom: buttonArea.top
            horizontalCenter: parent.horizontalCenter
        }

        columns: 2
        rows: 1
        columnSpacing: 10
        rowSpacing: 5


        Label {
            text: qsTr("Название")
        }
        Rectangle {
            width: 200
            height: 50

            color: "transparent"

            TextField {
                width: parent.width

                font.pointSize: 12

                selectByMouse: true
            }
        }
    }


    Row {
        id: buttonArea

        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 10
        }

        spacing: 50

        Button {
            text: qsTr("Отменить")

            Material.background: "#FFCDD2"

            onClicked: {
                deliveryAddDialog.close()
            }
        }

        Button {
            text: qsTr("Сохранить")

            Material.background: "#C8E6C9"

            onClicked: {
                deliveryAddDialog.close()
            }
        }
    }
}
