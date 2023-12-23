import QtQuick 2.0

Rectangle {
    property alias pet_image_source: pet_image.source
    property alias pet_image_width: pet.width
    property alias pet_image_heigth: pet.height

    id: pet
    width: 430
    height: 320
    Image{
        id:pet_image
        source: "assets/melissa.png"
        sourceSize.width: parent.width
        sourceSize.height: parent.height
        anchors.fill:parent
    }
}
