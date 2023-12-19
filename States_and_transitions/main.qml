import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

Window {
    width: 480
    height: 640
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        anchors.fill: parent
        spacing: 10

        Comp {
            id: header
            Layout.fillWidth: true
            Layout.minimumHeight: 50
            color: "lightgray"
            text: "Header"

            Text {
                id: back

                text: "<-"
                font.pixelSize: 35
                opacity: 0
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        menu.state = ""
                    }
                }
            }
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Comp {
                id: content
                cwidth: parent.width
                cheight: parent.height
                anchors.centerIn: parent
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                color: "white"
                text: "Content"
            }
        }

        RowLayout {
            id: menu
            Layout.preferredHeight: 50
            Layout.fillWidth: true
            state: ""
            spacing: 10

            states: [
                State {
                    name: "b1"
                    PropertyChanges { target: b1; color: "gray"; opacity: 1}
                    PropertyChanges { target: b2; color: "lightgray"; opacity: 0.5}
                    PropertyChanges { target: b3; color: "lightgray"; opacity: 0.5}
                    PropertyChanges { target: header; text: "Header 1" }
                    PropertyChanges { target: content; text: "Content 1" }
                    PropertyChanges { target: back; opacity: 0 }
                },
                State {
                    name: "b2"
                    PropertyChanges { target: b1; color: "lightgray"; opacity: 0.5}
                    PropertyChanges { target: b2; color: "gray"; opacity: 1}
                    PropertyChanges { target: b3; color: "lightgray"; opacity: 0.5}
                    PropertyChanges { target: header; text: "Header 2";  }
                    PropertyChanges { target: content; text: "Content 2" }
                    PropertyChanges { target: back; opacity: 1}
                },
                State {
                    name: "b3"
                    PropertyChanges { target: b1; color: "lightgray"; opacity: 0.5}
                    PropertyChanges { target: b2; color: "lightgray"; opacity: 0.5}
                    PropertyChanges { target: b3; color: "gray"; opacity: 1}
                    PropertyChanges { target: header; text: "Header 3" }
                    PropertyChanges { target: content; text: "Content 3" }
                    PropertyChanges { target: back; opacity: 1}
                }
            ]

            transitions: [
                Transition {
                    ColorAnimation { properties: "color"; duration: 500 }
                }
            ]

            Comp {
                id: b1
                opacity: 0.8
                Layout.fillWidth: true
                Layout.minimumHeight: 50
                Layout.alignment: Qt.AlignBottom
                color: "lightgray"
                text: "1"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (menu.state !== "b1")
                            menu.state = "b1";
                        else
                            menu.state = "";
                    }
                }
            }

            Comp {
                id: b2

                opacity: 0.8
                Layout.fillWidth: true
                Layout.minimumHeight: 50
                Layout.alignment: Qt.AlignBottom
                color: "lightgray"
                text: "2"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (menu.state !== "b2")
                            menu.state = "b2";
                        else
                            menu.state = "";
                    }
                }
            }



            Comp {
                id: b3

                opacity: 0.8
                Layout.fillWidth: true
                Layout.minimumHeight: 50
                Layout.alignment: Qt.AlignBottom
                color: "lightgray"
                text: "3"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (menu.state !== "b3")
                            menu.state = "b3";
                        else
                            menu.state = "";
                    }
                }
            }
        }
    }
}
