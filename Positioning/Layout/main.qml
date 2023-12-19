import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 480
    height: 640
    visible: true
    title: qsTr("Hello World")

    Comp{
            id: header
            text:"Header"
            color:"lightgrey"
            height: parent.height/9
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right:parent.right

        }
        Comp{
            color:"#ededed"
            text:"Content"
            border:"lightgray"
            anchors.margins: 7
            anchors.top: header.bottom
            anchors.left: parent.left
            anchors.right:parent.right
            anchors.bottom: footer.top
        }
        Comp{
            id: footer
            color:"white"
            height:parent.height/9
            anchors.left: parent.left
            anchors.right:parent.right
            anchors.bottom: parent.bottom

            Comp{
                id:b1
                text:"1"
                color: header.color
                height: footer.height
                width:footer.width/3
                anchors.left: parent.left
            }
            Comp{
                id:b2
                text:"2"
                color: header.color
                height: footer.height
                width:footer.width/3
                anchors.centerIn: parent
                anchors.leftMargin: 7
                anchors.rightMargin: 7
            }
            Comp{
                id:b3
                text:"3"
                color: header.color
                height: footer.height
                width:footer.width/3
                anchors.right:parent.right
            }
        }
}
