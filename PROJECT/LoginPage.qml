import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15

Rectangle {
    width: 430
    height: 932

    Rectangle {
        width: parent.width
        height: parent.height
        color : "white"

        ColumnLayout {
            anchors.centerIn: parent
            spacing: 20

            Image{
                id: logo
                source:"assets/pets-svgrepo-com.svg"
                sourceSize.width: 70
                sourceSize.height: 70

                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                id: name
                text: "Animal Tinder"
                font.bold: true
                font.pixelSize: 26
                anchors.horizontalCenter: parent.horizontalCenter
            }

            TextField {
                id: log
                placeholderText: "Email"
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
                    onClicked:{
                        home_page.visible = true
                        navigation.visible = true

                        login_page.visible=false
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
