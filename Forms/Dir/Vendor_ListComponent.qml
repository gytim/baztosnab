import QtQuick 2.12
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.5

ItemDelegate {

    height: 80

    anchors {
        left: parent.left
        right: parent.right
    }

    Image {
        id: image

        width: 50
        height: 50
        sourceSize.width: 100
        sourceSize.height:100

        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter

        source: "qrc:/Images/baseline-account_circle-24px_blue.svg"
    }

    Text {
        id: name

        anchors {
            left: image.right
            top: parent.top
            right: parent.right

            topMargin: 10
            rightMargin: 10
        }

        font.pointSize: 14

        elide: Text.ElideRight

        text: text1

    }
    Text {
        id: address

        anchors {
            left: image.right
            top: name.bottom
            right: parent.right

            topMargin: 5
            rightMargin: 10
        }

        font.pointSize: 10

        elide: Text.ElideRight

        text: text1

    }
    Text {
        anchors {
            left: image.right
            top: address.bottom
            right: parent.right

            topMargin: -1
            rightMargin: 10
        }

        font.pointSize: 10
        font.italic: true

        text: text1
        opacity: 0.6

        elide: Text.ElideRight
    }

    Rectangle {
        height: 1
        width: parent.width - 20

        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom

            leftMargin: 10
            rightMargin: 10
        }

        color: "lightgrey"
        opacity: 0.6
    }
}
