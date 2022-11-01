import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3

Rectangle {
    id: root
    color: "#2c2c2c"
    onSelectedToolChanged: {
        webView.url = urls[selectedTool]
    }

    property int selectedTool: 0
    property var urls: ["https://act.hoyolab.com/ys/app/interactive-map/index.html?lang=ja-jp#/map/2?shown_types=2,3,154,403,356&center=4675.47,-5503.88&zoom=-0.50",
        "http://192.168.0.232/app/fgt/"]

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

