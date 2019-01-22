import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.5

import "../Dir"

Page {
    title: qsTr("Поставщики")

    Order_Add {
        id: vendor_Add
    }

    TextField {
        id: textSearch
        width: 200
        anchors.left: pane.left

        font.pointSize: 12

        placeholderText: qsTr("Поиск")
    }

    ToolButton {
        id: sizeButton
        text: "\u26CC"

        width: 40

        visible: textSearch.text.length > 0 ? true : false

        anchors{
            right: textSearch.right
            rightMargin: -10
            verticalCenter: textSearch.verticalCenter
        }

        onClicked: {
            textSearch.text = ""
        }
    }

    ToolButton  {
        width: 60
        height: 60

        anchors{
            top: pane.top
            left: pane.right
            leftMargin: 10
        }

        icon.source:  "qrc:/Images/baseline-add_circle-24px.svg"
        icon.color: Material.Amber
        icon.width: 40
        icon.height:40

        onClicked: {
            vendor_Add.open()
        }
    }

    Pane{
        id: pane

        width: parent.width / 1.3

        anchors {
            margins: 10
            top: parent.top
            topMargin: 50
            bottom: parent.bottom
            bottomMargin: 10

            horizontalCenter: parent.horizontalCenter
        }

        Material.elevation: 10
    }


    ModelFree{
        id: pyOrderModel
    }

    ListView {
        id: ordersList
        anchors {
            left: pane.left
            top: pane.top
            bottom: pane.bottom
            right: pane.right
        }

        headerPositioning: ListView.OverlayHeader
        header: Order_ListHeader{}

        clip: true

        model: pyOrderModel
        delegate: Order_ListComponent{}
    }
}
