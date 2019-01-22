import QtQuick 2.12
import QtQuick.Controls 2.12

import "."
import "Forms"

ApplicationWindow {
    // Объявляем свойства, которые будут хранить позицию зажатия курсора мыши
    property int previousX
    property int previousY

    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Scroll")

    minimumWidth: 640
    minimumHeight: 480

    flags: Qt.Window | Qt.FramelessWindowHint

    Component.onCompleted: {
        headArea.toolButton.visible = false
    }

    /// !!! HEAD
    header: Head{
        id: headArea
    }

    //Меню
    MainMenuBar{
        id: mainMenuBar
    }

    //Рабочая область
    StackView {
        id: stackView
        anchors.fill: parent

        initialItem: "qrc:/Forms/LoginForm.qml"
    }

    //Расчёты для трёх областей ресайза
    MouseArea {
        id: bottomArea
        height: 5
        anchors {
            bottom: parent.bottom
            left: parent.left
            right: parent.right
        }
        cursorShape: Qt.SizeVerCursor

        onPressed: {
            previousY = mouseY
        }

        onMouseYChanged: {
            var dy = mouseY - previousY
            window.setHeight(window.height + dy)
        }
    }

    MouseArea {
        id: leftArea
        width: 5
        anchors {
            top: parent.top
            bottom: parent.bottom
            left: parent.left
        }
        cursorShape: Qt.SizeHorCursor

        onPressed: {
            previousX = mouseX
        }

        onMouseXChanged: {
            var dx = mouseX - previousX
            window.setX(window.x + dx)
            window.setWidth(window.width - dx)
        }
    }

    MouseArea {
        id: rightArea
        width: 5
        anchors {
            top: parent.top
            bottom: parent.bottom
            right: parent.right
        }
        cursorShape: Qt.SizeHorCursor

        onPressed: {
            previousX = mouseX
        }

        onMouseXChanged: {
            var dx = mouseX - previousX
            window.setWidth(window.width + dx)
        }
    }
}
