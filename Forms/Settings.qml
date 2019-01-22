import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.5

Page {
    title: qsTr("Settings")

    TabBar {
        id: bar
        width: parent.width

        TabButton {
            text: qsTr("Подключение")
            width: 150
        }

        TabButton {
            text: qsTr("Печать")
            width: 150
        }

        TabButton {
            text: qsTr("Вид")
            width: 150
        }
    }

    StackLayout {
        currentIndex: bar.currentIndex

        anchors {
            top: bar.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }        

        Item {
            Pane{
                anchors.fill: parent
                anchors.margins: 3

                Material.elevation: 10

                Grid{
                    anchors.centerIn: parent
                    verticalItemAlignment: Grid.AlignVCenter

                    columns: 2
                    rows: 5

                    spacing: 5

                    Label {
                        text: qsTr("Тип подключения")
                    }
                    ComboBox{
                        width: 200
                        font.pointSize: 12

                        model: ["PSQL"]

                    }
                    Label {
                        text: qsTr("host")
                    }
                    TextField{
                        width: 200
                        font.pointSize: 12

                        selectByMouse: true
                    }
                    Label {
                        text: qsTr("Порт")
                    }
                    TextField{
                        width: 200
                        font.pointSize: 12

                        selectByMouse: true
                    }
                    Label {
                        text: qsTr("Пользователь")
                    }
                    TextField {
                        width: 200
                        font.pointSize: 12

                        selectByMouse: true
                    }
                    Label {
                        text: qsTr("Пароль")
                    }
                    TextField {
                        echoMode: TextInput.Password

                        width: 200
                        font.pointSize: 12

                        selectByMouse: true
                    }
                }
            }
        }
        Item {
            Pane {
                anchors.fill: parent
                anchors.margins: 3

                Material.elevation: 10
            }
        }
        Item {
            Pane{
                anchors.fill: parent
                anchors.margins: 3

                Material.elevation: 10
            }
        }
    }
}
