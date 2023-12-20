import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15

Window {
    width: 480
    height: 640
    visible: true
    title: qsTr("Login")

    Rectangle {
        width: parent.width
        height: parent.height
        color : "#ededed"

        ColumnLayout {
            anchors.centerIn: parent
            spacing: 20

            TextField {
                id: log
                placeholderText: "Username"
                width: 200
                height: 40
                font.pixelSize: 16
                leftPadding: 8
                topPadding: 8
            }

            TextField {
                id: pass
                placeholderText: "Password"
                width: 200
                height: 40
                font.pixelSize: 16
                echoMode: TextInput.Password
                leftPadding: 8
                topPadding: 8
            }

            Row {
                Button {
                    text: "Log In"
                    width: 100
                    height: 40
                    font.pixelSize: 16
                    background: Rectangle {
                        color: "lightgray"
                    }
                }

                Button {
                    text: "Clear"
                    width: 100
                    height: 40
                    font.pixelSize: 16
                    background: Rectangle {
                        color: "#f5f5f5"
                    }
                    onClicked: {
                        log.text = ""
                        pass.text = ""
                    }
                }
            }

        }
    }
}
