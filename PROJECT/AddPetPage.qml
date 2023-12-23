import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Dialogs

Rectangle {
    id: window
    width: 430
    height: 930

    ColumnLayout {
        anchors.top: parent.top
        anchors.topMargin: 5

        width: parent.width
        anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 10

                Text {
                        anchors.left: parent.left
                        text:"Имя питомца "
                        font.pixelSize: 20
                        anchors.leftMargin: 10
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                    }
                    TextField{
                        id:name
                        placeholderText: "Пушок"
                        anchors.left: parent.left
                        anchors.topMargin: 32
                        font.pixelSize: 16
                        anchors.leftMargin: 10
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                    }
                    Text {
                        anchors.left: parent.left
                        text:"Возраст "
                        font.pixelSize: 20
                        anchors.leftMargin: 10
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                    }
                    TextField{
                        id:age
                        placeholderText: "3 года"
                        anchors.left: parent.left
                        anchors.topMargin: 32
                        font.pixelSize: 16
                        anchors.leftMargin: 10
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                    }
                    ColumnLayout {

                        id: gender
                        anchors.left: parent.left
                        anchors.topMargin: 32
                        anchors.leftMargin: 10
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        Text {
                            anchors.left: parent.left
                            font.pixelSize: 20
                            anchors.right: parent.right
                            text:"Пол "
                        }
                        RadioButton {
                            text: qsTr("Мужской")
                            font.pixelSize: 16
                        }
                        RadioButton {
                            text: qsTr("Женский")
                            font.pixelSize: 16
                        }
                    }
                    Text {
                        anchors.left: parent.left
                        font.pixelSize: 20
                        anchors.leftMargin: 10
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        text:"Описание "
                    }
                    TextArea {
                        anchors.left: parent.left
                        anchors.topMargin: 32
                        font.pixelSize: 16
                        anchors.leftMargin: 10
                        anchors.right: parent.right
                        anchors.rightMargin: 10

                    id:description
                    placeholderText: qsTr("Расскажите немного о питомце...")
                    }

                    Button {
                        anchors.left: parent.left
                        anchors.topMargin: 32
                        font.pixelSize: 16
                        anchors.leftMargin: 10
                        text: qsTr("Загрузить изображение")
                        onClicked: file.open()
                        }
                    Rectangle {
                        anchors.leftMargin: 10
                        anchors.left: parent.left
                        anchors.rightMargin: 10
                        width: window.width / 5
                        height: window.width / 5
                        Image {
                            id: image
                            anchors.fill: parent
                        }
                    }

                    FileDialog {
                        id: file
                        currentFolder: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0]
                        onAccepted: image.source = selectedFile
                    }
                    Button {
                        anchors.left: parent.left
                        anchors.bottom: bottom_nav.top
                        anchors.topMargin: 32
                        anchors.bottomMargin: 32
                        font.pixelSize: 16
                        anchors.leftMargin: 10
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: qsTr("Загрузить анкету")
                        MouseArea{
                            id: click
                            anchors.fill:parent
                            onClicked:{
                                add_pet.visible = false

                                user_page.visible=true
                            }
                        }
                        }
                }}
