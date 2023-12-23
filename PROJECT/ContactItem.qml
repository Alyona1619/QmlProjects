import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: parent.width
    anchors.left: parent.left
    anchors.right: parent.right
    height: 100
    color: "#D9D9D9"
    MouseArea{
        id: watchProfile
        anchors.fill:parent
        onClicked:{
            chat_page.visible = true

            contact_page.visible=false
        }
    }
    Row {
        spacing: 5
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 24
        anchors.topMargin: 16

        Image {
            width: 60
            height: 60
            source: "assets/cat.jpg"
            anchors.verticalCenter: parent.verticalCenter

        }

        Column {
            Text {
                text: "Мелиса"
                font.bold: true
                font.pixelSize: 20
            }
            Text {
                text: "Владимир Петрович"
                font.pixelSize: 16
            }
        }
    }
}
