import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: window
    width: 430
    height: 930

    ColumnLayout {
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 10

                    Repeater {
                        model: 4
                        ContactItem {

                        }
                    }
                }


       }
