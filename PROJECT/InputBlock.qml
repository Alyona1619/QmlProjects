import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {

    property alias text: text.text
    property alias placeholder: input.placeholderText

    Text {
            id: text
            font.pixelSize: 20
        }
        TextField{
            id:input
            anchors.topMargin: 32
            font.pixelSize: 16
        }
}
