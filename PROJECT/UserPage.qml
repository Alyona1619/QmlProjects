import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    anchors.fill: parent
        ColumnLayout{
            id: header
            spacing: 0
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            Rectangle {
                id: backgr_header
                width: 430
                height: 204
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
                id: button_edit
                anchors.top: backgr_header.bottom
                anchors.horizontalCenter: backgr_header.horizontalCenter
                btext:"Редактировать профиль"
                anchors.topMargin: 8
                anchors.bottomMargin: 8
                MouseArea{
                    id: userForm
                    anchors.fill:parent
                    onClicked:{
                        user_page.visible = false

                        user_form.visible=true
                    }
                }
            }

            TextMeButton {
                id: button_add
                anchors.top: button_edit.bottom
                anchors.horizontalCenter: backgr_header.horizontalCenter
                btext:"Добавить питомца"
                anchors.topMargin: 8
                anchors.bottomMargin: 8
                MouseArea{
                    id: addPet
                    anchors.fill:parent
                    onClicked:{
                        user_page.visible = false

                        add_pet.visible=true
                    }
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


