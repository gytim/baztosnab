import QtQuick 2.12
import QtQuick.Controls 2.12

ItemDelegate {
    height: 40

    anchors {
        left: parent.left
        right: parent.right
    }

    Text {
        text: text1
        opacity: 0.6

        anchors {
            left: parent.left
            right: parent.right

            margins: 10
        }
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

