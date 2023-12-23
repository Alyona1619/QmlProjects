import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: rbutton
    width: 50
    height: 50
    radius: 360
    color:"white"
    Image{
        id: back
        source: "assets/ep_back.svg"
        sourceSize.width: 30
        sourceSize.height: 30
        anchors.centerIn: parent
    }
}
