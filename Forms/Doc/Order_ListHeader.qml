import QtQuick 2.0

Rectangle {
    id: headerItem
    width: parent.width
    height: 30
    z: 2

    color: "#eaeaea"

    Text {
        anchors.verticalCenter: parent.verticalCenter
        x: 0 + 15

        text: "Оплата"
        color: "gray"
    }
    Text {
        anchors.verticalCenter: parent.verticalCenter
        x: 0 + 15 + parent.width / 6

        text: "Дата"
        color: "gray"
    }
    Text {
        anchors.verticalCenter: parent.verticalCenter
        x: 0 + 15 + 2 * parent.width / 6

        text: "Клиент"
        color: "gray"
    }
    Text {
        anchors.verticalCenter: parent.verticalCenter
        x: 0 + 15 + 3 * parent.width / 6

        text: "Статус"
        color: "gray"
    }
    Text {
        y: parent.verticalCenter - 10
        x: 0 + 15 + 4 * parent.width / 6

        text: "Сумма"
        color: "gray"
    }
    Text {
        y: parent.verticalCenter + 10
        x: 0 + 15 + 4 * parent.width / 6

        text: "Вес"
        color: "gray"
    }
    Text {
        anchors.verticalCenter: parent.verticalCenter
        x: 0 + 15 + 4 * parent.width / 6

        text: "1С"
        color: "gray"
    }
    Text {
        anchors.verticalCenter: parent.verticalCenter
        x: 0 + 15

        text: "Трек"
        color: "gray"
    }
    Text {
        text: "Накладная"
        color: "gray"
    }
}
