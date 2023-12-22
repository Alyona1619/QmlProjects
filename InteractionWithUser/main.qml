import QtQuick
import QtQuick.Layouts 1.3

Window {
    id: window
    width: 480
    height: 640
    visible: true
    title: qsTr("layout")

    ColumnLayout{
        id: page
        anchors.fill: parent
        spacing: 10

        RowLayout{
            id: header
            Layout.minimumHeight: page.height/9
            Layout.minimumWidth: page.width
            Comp {
                id: header_content
                text:"Header"
                color:"lightgray"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
        RowLayout{
            id: body
            Layout.minimumHeight: (page.height/9)*7-2*page.spacing
            Layout.minimumWidth: page.width-2*page.spacing
            Layout.leftMargin: page.spacing
            Layout.rightMargin: page.spacing
            Comp {
                id: body_content
                color:"white"
                text:"Content"
                border:"lightgray"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
        RowLayout{
            id: footer
            Layout.minimumHeight: window.height/9
            spacing: 3
            Comp{
                text:"1"
                color:"lightgray"
                Layout.minimumWidth: window.width/3
                Layout.fillHeight: true
                MouseArea{
                    id:first
                    anchors.fill:parent
                    onClicked:{
                        parent.opacity=1.0;
                        second.parent.opacity=0.5;
                        third.parent.opacity=0.5;
                        header_content.text="Header 1"
                        body_content.text="Content 1"
                    }
                }
            }
            Comp{
                text:"2"
                color:"lightgray"
                Layout.minimumWidth: window.width/3-2*footer.spacing
                Layout.fillHeight: true
                MouseArea{
                    id:second
                    anchors.fill:parent
                    onClicked:{
                        parent.opacity=1.0;
                        first.parent.opacity=0.5;
                        third.parent.opacity=0.5;
                        header_content.text="Header 2"
                        body_content.text="Content 2"
                    }
                }
            }
            Comp{
                text:"3"
                color:"lightgray"
                Layout.minimumWidth: window.width/3
                Layout.fillHeight: true
                MouseArea{
                    id:third
                    anchors.fill:parent
                    onClicked:{
                        parent.opacity=1.0;
                        first.parent.opacity=0.5;
                        second.parent.opacity=0.5;
                        header_content.text="Header 3"
                        body_content.text="Content 3"
                    }
                }
            }
        }
    }
}
