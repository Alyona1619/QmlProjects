import QtQuick 2.15
import QtQuick.Controls 2.15

Button{
    property alias btext:text.text

    contentItem: Text {
        id:text
        font.pixelSize: 20
        font.bold: true
        color:"white"
        text: "Написать"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    background: Rectangle {
            implicitWidth: 388
            implicitHeight: 56
            color: "#D3DE16"
            radius: 50
        }
}
