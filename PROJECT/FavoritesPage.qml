import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: window
    width: 430
    height: 930

    ColumnLayout {
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 10

                    Repeater {
                        model: 4
                        FavoriteCard {
                                img:"assets/cat.jpg"
                                height: 220
                                width: 393
                                anchors.left: parent.left
                                anchors.leftMargin: 10
                                anchors.right: parent.right
                                anchors.rightMargin: 10
                                name: "Мелиса"
                                race: "Персидская кошка"
                                age: "2 года"
                                gender: "жен"
                                description: "Спокойная,\nдружелюбная кошечка\nМелиса ищет друга для\nуспешного разведения"
                                address: "Иркутск,\nЛенинский р-н"
                        }
                    }
                }


       }
