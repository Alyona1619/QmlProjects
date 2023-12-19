import QtQuick 2.15

Item{
    property alias color: compRect.color
    property alias text: compText.text
    property alias border: compRect.border.color
    property alias cwidth: compRect.width
    property alias cheight: compRect.height

    width: parent.width
    height: parent.height
    Rectangle {
        id: compRect
        width: parent.width
        height: parent.height
        color: "lightgrey"
        border.color: "#cbcbcb"

        Text {
            id: compText
            text: "Content"
            font {
                pointSize: 12
            }
            anchors.centerIn: parent
        }
    }
}

