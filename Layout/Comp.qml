import QtQuick 2.15

Item {
    property alias color: rect.color
    property alias text: text.text
    property alias border:rect.border.color

    Rectangle {
        id:rect
        anchors.fill: parent
        border.width: 1
        border.color: "lightgray"
        Text{
            id: text
            font.pixelSize: 20
            anchors.centerIn: parent
        }
    }
}
