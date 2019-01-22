import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.5

Page {
    title: qsTr("Типы доставки")

    DeliveryType_Add {
        id: deliveryType_Add
    }


    ToolButton {
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
            deliveryType_Add.open()
        }
    }

    Pane {
        id: pane

        width: parent.width / 3

        anchors {
            margins: 10
            top: parent.top
            topMargin: 50
            bottom: parent.bottom
            bottomMargin: 50

            horizontalCenter: parent.horizontalCenter
        }

        Material.elevation: 10
    }


    ModelFree{
        id: pyDeliveryTypeModel
    }

    ListView {
        anchors.fill: pane

        clip: true

        model: pyDeliveryTypeModel
        delegate: DeliveryType_ListComponent{}
    }
}
