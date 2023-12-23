import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    property alias name: name.text
    property alias race: race.text
    property alias age: age.text
    property alias gender: gender.text
    property alias img: image.source

    Rectangle {
        id:card
        anchors.fill: parent
        color:"#E0FCFF"

        Image {
            id: image
            height: (parent.height *75)/100
            width: 21 * parent.width / 100
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 12.5 * parent.height / 100
            anchors.leftMargin: 12.5 * parent.height / 100
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
                    } else {
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
            font.pixelSize: 16
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

    }
}
