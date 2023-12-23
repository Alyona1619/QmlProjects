import QtQuick 2.0

Item {
    property alias name: fav.name
    property alias race: fav.race
    property alias age: fav.age
    property alias gender: fav.gender
    property alias description: fav.description
    property alias address: fav.address
    property alias img: fav.img
    Card {
        id: fav
        anchors.fill: parent

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
            state:"active"

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
    }
}
