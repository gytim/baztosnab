import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.5

Page {
    title: qsTr("Dashboard")

    Pane {
        anchors.margins: 10

        Material.elevation: 10

        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        width: parent.width / 3 - 10
    }
    Pane {
        anchors.margins: 10

        Material.elevation: 10

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        width: parent.width / 3 - 10
    }
    Pane {
        anchors.margins: 10

        Material.elevation: 10

        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        width: parent.width / 3 - 10
    }
}
