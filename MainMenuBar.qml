import QtQuick 2.12
import QtQuick.Controls 2.12

Menu {
    Menu {
        title: qsTr("&Справочники")

           Action {
               text: qsTr("&Поставщики")
               icon.source: "qrc:/Images/baseline-supervisor_account-24px.svg"

               onTriggered: {
                   stackView.push("qrc:/Forms/Dir/Vendors.qml")
               }
           }
           Action {
               text: qsTr("&Тип Перевозки")
               icon.source: "qrc:/Images/baseline-commute-24px.svg"

               onTriggered: {
                   stackView.push("qrc:/Forms/Dir/DeliveryType.qml")
               }
           }
           Action {
               text: qsTr("&Даты")
               icon.source: "qrc:/Images/baseline-alarm_on-24px.svg"

               onTriggered: {
                   stackView.push("qrc:/Forms/Dir/DateType.qml")
               }
           }

    }
    Menu {
        title: qsTr("&Документы")

        Action{
            text: qsTr("&Закупка")
            icon.source: "qrc:/Images/baseline-class-24px.svg"

            onTriggered: {
                stackView.push("qrc:/Forms/Doc/Orders.qml")
            }
        }
    }

    Text { text: " \n \n \n \n \n \n \n \n" }


    Action{
        text: qsTr("&Настройки")
        icon.source: "qrc:/Images/baseline-settings-20px.svg"

        onTriggered: {
            stackView.push("qrc:/Forms/Settings.qml")
        }
    }

    MenuSeparator{}

    Action {
        text: qsTr("&Выйти")
        icon.source: "qrc:/Images/baseline-block-24px.svg"

        onTriggered: {
            headArea.toolButton.visible = false
            stackView.clear()
            stackView.push(stackView.initialItem)
        }
    }
}
