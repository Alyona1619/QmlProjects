import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: rbutton
    width: 50
    height: 50
    radius: 360
    color:"white"

    states:[
        State {
            name: "unactive"
            PropertyChanges {target: star; source:"assets/star_pet_page.svg"}
        },
        State {
            name: "active"
            PropertyChanges {target: star; source:"assets/star_pet_page_active.svg"}
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
    Image{
        id: star
        sourceSize.width: 30
        sourceSize.height: 30
        anchors.centerIn: parent


    }
}

