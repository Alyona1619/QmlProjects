import QtQuick 2.0
import QtQuick.Controls 2.15

Rectangle {

    property alias r_source: image.source
    property alias r_color: rbutton.color

    id: rbutton
    width: 60
    height: 60
    radius: 360
    color:"white"
    Image{
        id: image
        sourceSize.width: 30
        sourceSize.height: 30
        anchors.centerIn: parent
    }
}
