import QtQuick 2.12
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.5

ItemDelegate {
    height: 80

    property string colorAAA: "444444"

    anchors {
        left: parent.left
        right: parent.right
    }

    Rectangle {
        id: payColor

        height: 10
        width: 10

        anchors {
            left: parent.left
            top: parent.top

            margins: 5
        }

        radius: 5

        color: "#" + colorAAA
    }

    Text {
        id: dateCreateOrder

        anchors {
            left: payColor.left
            top: parent.top

            leftMargin: 15
        }

        font.pointSize: 10
        font.italic: true

        text: text1
        opacity: 0.6

        elide: Text.ElideRight
    }    
    Text {
        id: stateOrder

        anchors {
            right: parent.right
            top: parent.top

            rightMargin: 5
        }

        font.pointSize: 10
        font.italic: true

        text: text1
        opacity: 0.6

        elide: Text.ElideRight
    }

    Text {
        id: name

        anchors {
            left: parent.left
            top: parent.top
            right: parent.right

            rightMargin: 10
            topMargin: 13
        }


        font.pointSize: 14

        elide: Text.ElideRight

        text: text1

    }

    Text {
        id: address

        anchors.left: image.right

        anchors.top: name.bottom
        anchors.topMargin: 5
        anchors.right: parent.right
        anchors.rightMargin: 10

        font.pointSize: 10

        elide: Text.ElideRight

        text: text1

    }

    Text {
        anchors.left: image.right

        anchors.top: address.bottom
        anchors.topMargin: -1
        anchors.right: parent.right
        anchors.rightMargin: 10

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
