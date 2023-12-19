import QtQuick 2.15

Item {
    property alias background: kub.color
    Rectangle {
        id: kub
        width: 50
        height: 50
        anchors.fill: parent
    }
}
