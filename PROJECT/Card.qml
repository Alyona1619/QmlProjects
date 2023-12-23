import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    property alias name: name.text
    property alias race: race.text
    property alias age: age.text
    property alias gender: gender.text
    property alias description: description.text
    property alias address: address.text
    property alias img: image.source

    Rectangle {
        id:card
        anchors.fill: parent
        color:"#D9D9D9"

        Image {
            id: image
            height: parent.height
            width: parent.width / 2 + (1 / 15) * parent.width
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left

            MouseArea{
                id: clickImage
                anchors.fill:parent
                onClicked:{
                    home_page.visible = false

                    pet_page.visible=true
                }
            }
        }
        Image {
            id: star
            height: 20
            width: 20
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.rightMargin: 15
            anchors.topMargin: 15

            states:[
                State {
                    name: "unactive"
                    PropertyChanges {target: star; source:"assets/star.svg"}
                },
                State {
                    name: "active"
                    PropertyChanges {target: star; source:"assets/activeStar.svg"}
                }
            ]
            state:"unactive"

            MouseArea{
                anchors.fill:parent
                onClicked: {
                    if (parent.state === "unactive") {
                        parent.state = "active";
                    } else if (parent.state === "active") {
                        parent.state = "unactive";
                    }
                }
            }
        }

        Text{
            id: name
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.left: image.right
            font.pointSize: 14
            font.bold: true
            anchors.leftMargin: 15
            anchors.topMargin: 15
        }
        Text{
            id: race
            anchors.right: parent.right
            anchors.top: name.bottom
            anchors.left: image.right
            font.pointSize: 10
            anchors.leftMargin: 15
        }
        Text{
            id: age
            anchors.right: parent.right
            anchors.top: race.bottom
            anchors.left: image.right
            font.pointSize: 10
            anchors.leftMargin: 15
        }
        Text{
            id: gender
            anchors.right: parent.right
            anchors.top: age.bottom
            anchors.left: image.right
            font.pointSize: 10
            anchors.leftMargin: 15
        }
        Text{
            id: description
            anchors.right: parent.right
            anchors.bottom: address.top
            anchors.left: image.right
            font.pointSize: 8
            anchors.leftMargin: 15
            anchors.bottomMargin: 10
        }
        Text{
            id: address
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.left: image.right
            font.bold: true
            font.pointSize: 8
            anchors.leftMargin: 15
            anchors.bottomMargin: 15
        }

    }
}
