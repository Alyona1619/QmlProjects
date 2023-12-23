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

                TextField {
                    id:search
                    placeholderText: "Поиск"
                    anchors.topMargin: 32
                    font.pixelSize: 16
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                }
                ToolBar {
                    id: filters
                    spacing: (parent.width - 150) / 3
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    background: Rectangle {
                    implicitHeight: 40
                    color: "white"

                    Rectangle {
                    width: parent.width
                    height: 1
                    anchors.bottom: parent.bottom
                    color: "white"
                    border.color: "white"
                    }
                    }
                    RowLayout {
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.horizontalCenter: parent.horizontalCenter

                        ToolButton {
                            id: cats
                            anchors.left: parent.left
                            contentItem: Image {
                                source: "assets/cat.svg"
                            }
                            onClicked: {
                                card1.img = card2.img = card3.img = card4.img = "assets/cat.jpg"
                                card1.name = card2.name = card3.name = card4.name = "Мелиса"
                                card1.race = card2.race = card3.race = card4.race = "Персидская кошка"
                                card1.age = card2.age = card3.age = card4.age = "2 года"
                                card1.gender = card2.gender = card3.gender = card4.gender = "жен"
                                card1.description = card2.description = card3.description = card4.description = "Спокойная,\nдружелюбная кошечка\nМелиса ищет друга для\nуспешного разведения"
                                card1.address = card2.address = card3.address = card4.address = "Иркутск,\nЛенинский р-н"
                            }

                        }
                        ToolButton {
                            id: dogs
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            contentItem: Image {
                                source: "assets/dog.svg"
                            }
                            onClicked: {
                                card1.img = card2.img = card3.img = card4.img = "assets/dog.jpg"
                                card1.name = card2.name = card3.name = card4.name = "Джессика"
                                card1.race = card2.race = card3.race = card4.race = "Английский\nспрингер-спаниель"
                                card1.age = card2.age = card3.age = card4.age = "4 года"
                                card1.gender = card2.gender = card3.gender = card4.gender = "жен"
                                card1.description = card2.description = card3.description = card4.description = "Ищем собачников\nиз Хомутово для\nсовместных прогулок"
                                card1.address = card2.address = card3.address = card4.address = "рп. Маркова,\nИркутская обл"

                            }
                        }
                        ToolButton {
                            id: other
                            anchors.right: parent.right
                            contentItem: Image {
                                source: "assets/other.svg"
                            }
                            onClicked: {
                                card1.img = card2.img = card3.img = card4.img = "assets/other.jpg"
                                card1.name = card2.name = card3.name = card4.name = "Персик"
                                card1.race = card2.race = card3.race = card4.race = "Сирийский хомяк"
                                card1.age = card2.age = card3.age = card4.age = "6 мес"
                                card1.gender = card2.gender = card3.gender = card4.gender = "муж"
                                card1.description = card2.description = card3.description = card4.description = "Требуется пара для\nразведения!\nТОЛЬКО СИРИЙСКИЕ\nСАМКИ!"
                                card1.address = card2.address = card3.address = card4.address = "Иркутск,\nул. Ленина"

                            }
                        }
                    }
                }

            Card {
                    id: card1
                    img:"assets/cat.jpg"
                    width: search.width
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    height: 220
                    name: "Мелиса"
                    race: "Персидская кошка"
                    age: "2 года"
                    gender: "жен"
                    description: "Спокойная,\nдружелюбная кошечка\nМелиса ищет друга для\nуспешного разведения"
                    address: "Иркутск,\nЛенинский р-н"
                }


            Card {
                    id: card2
                    img: card1.img
                    width: card1.width
                    anchors.left: card1.left
                    anchors.leftMargin: card1.leftMargin
                    anchors.right: card1.right
                    anchors.rightMargin: card1.rightMargin
                    height: card1.height
                    name: card1.name
                    race: card1.race
                    age: card1.age
                    gender: card1.gender
                    description: card1.description
                    address: card1.address
                }
            Card{
                    id: card3
                    img: card1.img
                    width: card1.width
                    anchors.left: card1.left
                    anchors.leftMargin: card1.leftMargin
                    anchors.right: card1.right
                    anchors.rightMargin: card1.rightMargin
                    height: card1.height
                    name: card1.name
                    race: card1.race
                    age: card1.age
                    gender: card1.gender
                    description: card1.description
                    address: card1.address
                }
            Card{
                    id: card4
                    img: card1.img
                    width: card1.width
                    anchors.left: card1.left
                    anchors.leftMargin: card1.leftMargin
                    anchors.right: card1.right
                    anchors.rightMargin: card1.rightMargin
                    height: card1.height
                    name: card1.name
                    race: card1.race
                    age: card1.age
                    gender: card1.gender
                    description: card1.description
                    address: card1.address
                }
    }
}
