import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Window {
    width: 480
    height: 640
    visible: true
    title: qsTr("Password")

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 30

        Rectangle {
            width: parent.width
            height: 5
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                anchors.centerIn: parent
                text: "Enter your password:"
                font.pixelSize: 16
            }
        }

        Rectangle {
            color: "white"
            width: parent.width
            height: 50
            anchors.bottomMargin: 50

            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id : pass
                text : pass.text
                color: "white"
            }

            RowLayout {
                spacing: 6
                anchors.centerIn: parent
                Repeater {
                    model: 6
                    Label {
                        width: 20
                        height: 20
                        font.pixelSize: 36
                        text: "*"
                        Layout.alignment: Qt.AlignTop
                        color: index < pass.text.length ? "black" : "light grey"
                    }
                }
            }
        }

        GridLayout {
            rows: 4
            columns: 3
            implicitWidth: parent.width

            Button {
                text: "1"
                onClicked: pass.text += "1"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "2"
                onClicked: pass.text += "2"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "3"
                onClicked: pass.text += "3"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "4"
                onClicked: pass.text += "4"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "5"
                onClicked: pass.text += "5"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "6"
                onClicked: pass.text += "6"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "7"
                onClicked: pass.text += "7"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "8"
                onClicked: pass.text += "8"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "9"
                onClicked: pass.text += "9"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: ""
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "0"
                onClicked: pass.text += "0"
                implicitWidth: 100
                implicitHeight: 50
            }

            Button {
                text: "Clear"
                onClicked: pass.text = ""
                implicitWidth: 100
                implicitHeight: 50
            }
        }

        Button {
            text: "Log In"
            implicitWidth: 100
            implicitHeight: 50

        }
    }
}
