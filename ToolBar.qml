import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3

Rectangle {
    id: root
    color: "#2c2c2c"

    Column {
        anchors.fill: parent

        RoundButton {
            id: buttonMap
            width: parent.width * 0.8
            height: width
            text: ""
            radius: 50
            palette.button: "white"
        }
    }
}

