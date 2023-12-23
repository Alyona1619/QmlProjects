import QtQuick 2.0
import QtQuick.Layouts 1.13
import QtQuick.Controls 2.15


ColumnLayout{
    anchors.fill: parent

    property int topItemsMargin: 30
    property int sideMargins: 21
    property int itemBottomMargin: 100

    PetImage_PetPage{
        id:image
        Layout.alignment: Qt.AlignTop
        Layout.fillWidth: true

        RowLayout{
            id: header
            Layout.alignment: Qt.AlignTop
            width: parent.width
            Back{
                id: back_button
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: topItemsMargin
                Layout.topMargin: topItemsMargin
                MouseArea{
                    id: clickBack
                    anchors.fill:parent
                    onClicked:{
                        home_page.visible = true

                        pet_page.visible=false
                    }
                }
            }
            StarLike{
                id: star_like
                Layout.alignment: Qt.AlignRight
                Layout.rightMargin: topItemsMargin
                Layout.topMargin: topItemsMargin
            }
        }
    }
    Item{
        id:info_pet
        width: parent.width - sideMargins*2
        anchors.top:image.bottom
        anchors.topMargin: 16
        anchors.leftMargin:  sideMargins
        anchors.rightMargin:  sideMargins
        anchors.left: parent.left
        anchors.right: parent.right
        RowLayout{
            id: name_sex
            width: parent.width
            Text{
                Layout.alignment: Qt.AlignLeft
                text: "Мелиса"
                font.pixelSize: 24
                font.weight: Font.bold
            }
            Text{
                Layout.alignment: Qt.AlignRight
                text: "Ж"
                font.pixelSize: 24
                font.weight: Font.bold
            }
        }
        RowLayout{
            id: type_age
            anchors.top:name_sex.bottom
            width: parent.width
            Text{
                Layout.alignment: Qt.AlignLeft
                text: "Персидская кошка"
                font.pixelSize: 16
            }
            Text{
                Layout.alignment: Qt.AlignRight
                text: "2 года"
                font.pixelSize: 16
            }
        }
        RowLayout{
            id: location
            anchors.topMargin: 8
            anchors.top: type_age.bottom
            Image{
                source: "assets/mdi_location.svg"
                sourceSize.width: 24
                sourceSize.height: 24
            }
            Text{
                text: "Иркутск, Ленинский р-н"
                font.pixelSize: 16
            }
        }

        Text{
            id: title
            anchors.top:location.bottom
            anchors.topMargin: 56
            text: "Описание"
            font.pixelSize: 20
            font.weight: Font.bold
        }
        Text{
            anchors.top:title.bottom
            text: "Спокойная, дружелюбная кошечка Мелиса ищет
друга для успешно разведения. Спокойная,
дружелюбная кошечка Мелиса ищет друга для
успешно разведения. Спокойная, дружелюбная
кошечка Мелиса ищет друга для успешно
разведения"
            font.pixelSize: 16
        }
    }


    TextMeButton{
        Layout.alignment: Qt.AlignCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: itemBottomMargin
        MouseArea{
            id: textMefromPetPage
            anchors.fill:parent
            onClicked:{
                chat_page.visible = true

                pet_page.visible=false
            }
        }
    }



}

