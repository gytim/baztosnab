import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.5

import "."

Page {
    title: qsTr("Baztosnab")


    RowLayout {
        id: textArea
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Column {
            Label {
                text: qsTr("Логин")
            }
            Label {
                text: qsTr("   ")
            }
            Label {
                text: qsTr("Пароль    ")
            }
        }
        Column {
            TextField {
                width: 200
                font.pointSize: 12

                selectByMouse: true
            }
            TextField {
                echoMode: TextInput.Password

                width: 200
                font.pointSize: 12

                selectByMouse: true
            }
        }
    }

    Button {
        width: textArea.width

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: textArea.bottom
        anchors.topMargin: 10

        Material.background: Material.Amber

        text: qsTr("Вход")

        onClicked: {
            headArea.toolButton.visible = true
            var stack = stackView
            stackView.clear()
            stack.push("qrc:/Forms/Dashboard.qml")
        }
    }
}
