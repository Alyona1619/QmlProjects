import QtQuick 2.15
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property alias ccolor: rect.color
    property alias cccolor: container.color
    property alias ctext: text.text
    property bool anchorToRight: true

    Rectangle {
        id:container
        width:200
        height: 45
        color: "lightblue"
        radius: 20 // радиус скругления трех углов
        anchors.top: contactItem.bottom
        anchors.left: parent.left
        anchors.leftMargin: 10


        Item {
            width: parent.width
            height: parent.height

            Rectangle {
                id:rect
                anchors {
                    right: anchorToRight ? parent.right : undefined
                    left: anchorToRight ? undefined : parent.left
                    top: parent.top
                }
                width: 20
                height: 20
                color: "lightblue"
            }

            Text {
                id: text
                text: "Ваш текст здесь"
                color: "black"
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: 8
                anchors.left: parent.left
                font.pixelSize: 14
            }

            Text {
                    text: "15:30"
                    color: "black"
                    anchors.right: parent.right // выравнивание по правому краю
                    anchors.bottom: parent.bottom // выравнивание по нижнему краю
                    font.pixelSize: 10 // изменение размера текста на 10 пикселей
                    rightPadding: 12 // отступ в 6 пикселей справа
                    bottomPadding: 6
                }
        }
    }
}
