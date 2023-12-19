import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 600
    height: 600
    visible: true
    title: qsTr("horse")

    Body{
        id: body
        width: 8*50
        anchors.centerIn: parent
    }

    Leg{
        id: l1
        anchors.top: body.bottom
        anchors.left: body.left
        anchors.topMargin: 3*50
    }
    Leg{
        id: l2
        anchors.top: body.bottom
        anchors.left: body.left
        anchors.topMargin: 3*50
        anchors.leftMargin: 2*50
    }
    Leg{
        id: l3
        anchors.top: body.bottom
        anchors.left: body.left
        anchors.topMargin: 3*50
        anchors.leftMargin: 5*50
    }

    Leg{
        id: l4
        anchors.top: body.bottom
        anchors.left: body.left
        anchors.topMargin: 3*50
        anchors.leftMargin: 7*50
    }

    Tail{
        anchors.top: body.bottom
        anchors.left: body.right
    }

    Head{
        id: neck
        anchors.bottom: body.top
        anchors.left: body.left
        anchors.bottomMargin: 3*50
    }

    Leg{
        id:head
        anchors.top: neck.top
        anchors.right: neck.left
        anchors.rightMargin: 1*50
    }

    Tail{
        anchors.top: neck.top
        anchors.left: neck.right
        anchors.leftMargin: 2*50
    }


}
