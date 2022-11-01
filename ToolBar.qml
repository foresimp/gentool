import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3

Rectangle {
    id: root
    color: "#2c2c2c"

    property int selectedTool: 0

    Column {
        anchors.fill: parent

        MouseArea {
            width: parent.width * 0.9
            height: width
            onClicked: { selectedTool = 0 }

            Image {
                anchors.fill: parent
                anchors.margins: parent.width * 0.1
                source: "./images/map.png"
            }
        }

        MouseArea {
            width: parent.width * 0.9
            height: width
            onClicked: { selectedTool = 1 }

            Image {
                anchors.fill: parent
                anchors.margins: parent.width * 0.1
                source: "http://192.168.0.232/app/fgt/img/icon.png"
            }
        }
    }

    Rectangle {
        anchors.right: parent.right
        width: parent.width * 0.1
        height: parent.width * 0.9
        color: "lightBlue"
        y: selectedTool * parent.width

        Behavior on y {
            NumberAnimation { duration: 100 }
        }
    }
}

