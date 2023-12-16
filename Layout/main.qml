import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12

Window {
    id: window
    width: 360
    height: 640
    visible: true
    title: qsTr("Layouts task")
    color: "#ededed"

    property int bMargin:10
    property int sMargin: 5
    ColumnLayout{
        id: cl
        anchors.fill: parent
        spacing: bMargin

        RowLayout{
            id: header
            Layout.minimumHeight: cl.height/9
            Layout.fillWidth: true
            Comp {
                text: "Header"
                color: "lightgrey"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
        RowLayout{
            id: main
            Layout.minimumHeight: (cl.height/9)*7-2*cl.spacing
            Layout.fillWidth: true
            Layout.rightMargin: cl.spacing
            Layout.leftMargin: cl.spacing
            Comp {

                color: "#ededed"
                text:"Content"
                border:"lightgray"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }

        RowLayout {
            id: menu
            Layout.minimumHeight: cl.height/9
            spacing: sMargin

            Comp {
                text: "1"
                color: "lightgrey"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }

            Comp {
                text: "2"
                color: "lightgrey"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }

            Comp {
                text: "3"
                color: "lightgrey"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }


        }
    }
}
