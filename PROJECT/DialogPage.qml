import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.15

Rectangle {
    visible: true
    width: 430
    height: 930

    ColumnLayout {
        anchors.fill:parent
        height: parent.height
        anchors.left: parent.left
        anchors.right: parent.right

        ContactItem {
            anchors.top: parent.top
            id: contactItem
            MouseArea{
                id: watchProfile2
                anchors.fill:parent
                onClicked:{
                    chat_page.visible = false

                    owner_page.visible=true
                }
            }
        }

        Message {
            id:message1
            ccolor: "#D9D9D9" // Установка цвета компонента
            cccolor: "#D9D9D9" // Установка цвета компонента
            ctext: "Здравствуйте" // Установка текста компонента
            anchorToRight: false // Изменение положения угла
            anchors.top: contactItem.bottom // расположение под ContactItem
            anchors.topMargin: 16
        }

        Message {
            id:message2
            ccolor: "#D3DE16" // Установка цвета компонента
            cccolor: "#D3DE16" // Установка цвета компонента
            ctext: "Добрый день!" // Установка текста компонента
            anchors.top: message1.bottom // расположение под ContactItem
            anchors.topMargin: 62

            width: parent.width
            anchors.left: parent.left
            anchors.leftMargin: 210
        }

        TextField{
            id:field
            placeholderText: "Введите сообщение..."
            anchors.left: parent.left
            anchors.topMargin: 32
            //Layout.alignment: Qt.AlignBottom
            anchors.bottom: parent.bottom

            font.pixelSize: 16
            anchors.leftMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.bottomMargin: 5
        }

        SendButton {
            id:sendButton
            anchors.left: field.right
        }
    }
}
