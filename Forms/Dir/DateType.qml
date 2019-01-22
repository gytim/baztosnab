import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.5
import QtQuick.Layouts 1.3

Page {
    title: qsTr("Типы дат")

    DateType_Add {
        id: dateType_Add
    }

    ColumnLayout{
        anchors {
            top: pane.top
            left: pane.right
            leftMargin: 10
        }

        ToolButton {
            width: 60
            height: 60

            icon.source:  "qrc:/Images/baseline-add_circle-24px.svg"
            icon.color: Material.Amber
            icon.width: 40
            icon.height:40

            onClicked: {
                dateType_Add.open()
            }
        }
        ToolButton {
            width: 60
            height: 60

            icon.source:  "qrc:/Images/baseline-keyboard_arrow_up-24px.svg"
            icon.color: Material.Amber
            icon.width: 40
            icon.height:40

            onClicked: {

            }
        }
        ToolButton {
            width: 60
            height: 60

            icon.source:  "qrc:/Images/baseline-keyboard_arrow_down-24px.svg"
            icon.color: Material.Amber
            icon.width: 40
            icon.height:40

            onClicked: {

            }
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
        id: pyDateTypeModel
    }

    ListView {
        id: dateTypeList
        anchors.fill: pane


        focus: true
        highlight: Rectangle{
            color: "#80DEEA"
        }
        //highlightRangeMode: ListView.StrictlyEnforceRange
        snapMode: ListView.SnapOneItem

        clip: true

        model: pyDateTypeModel
        delegate:
            DateType_ListComponent{}
    }
/*
    RowLayout{
        Text    {
            text: myModel.get(dateTypeList.currentIndex).text1
        }
        Text    {
            text: dateTypeList.currentIndex
        }
    }*/
}
