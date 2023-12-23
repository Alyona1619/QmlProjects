import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: win
    visible: true
    width: 430
    height: 932


        ColumnLayout{
            id: header
            spacing: 0
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            Rectangle {
                id: backgr_header
                width: 430
                height: 211
                Image {
                    source: "assets/paws.svg"
                    width: 430
                    height: 177
                    fillMode: Image.Pad
                }



                Rectangle {
                    id: avatar
                    width: 150
                    height: 150
                    radius: width/2
                    color: "#DAD8D8"
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter

                    Image {
                        source: "assets/ava.svg"
                        width: 95
                        height: 99
                        fillMode: Image.Stretch
                        anchors.centerIn: parent
                        visible: true
                    }
                }
            }

            TextMeButton {
                id: button
                anchors.top: backgr_header.bottom
                anchors.horizontalCenter: backgr_header.horizontalCenter
                anchors.topMargin: 8
                anchors.bottomMargin: 8
                MouseArea{
                    id: textMe
                    anchors.fill:parent
                    onClicked:{
                        chat_page.visible = true

                        owner_page.visible=false
                    }
                }
            }
        }

        Back{
            anchors.top: parent.top
            anchors.topMargin: 26
            anchors.left: parent.left
            anchors.leftMargin: 26
            MouseArea{
                id: clickBack
                anchors.fill:parent
                onClicked:{
                    chat_page.visible = true

                    owner_page.visible=false
                }
            }
        }


        ColumnLayout {
            id: description
            anchors.topMargin: 27
            anchors.top: header.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 22
            Text {
                text: "Владимир Петрович"
                font.pixelSize: 20
                anchors.bottomMargin: 27
            }

            Text {
                text: "Заводчик с 5-летним опытом. Занимаюсь разведением
кошек персидской породы в Иркутске.

Чистокровные, нежные, спокойные кошки и коты ждут
надежных и любящих хозяев.

Пишите по вопросам покупки в личные сообщения.
Открыт к предложениям по сотрудничеству."
                font.pixelSize: 14
                anchors.bottomMargin: 20
            }

            Text {
                text: "Мои животные:"
                font.pixelSize: 20
            }

            Repeater {
                model: 2 // Замените на количество карточек животных

                ProfileCard {
                    id: card1
                    img:"assets/cat.jpg"
                    //width: parent.width
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    height: 107
                    name: "Мелиса"
                    race: "Персидская кошка"
                    age: "2 года"
                    gender: "жен"
                }

            }
        }


   }

