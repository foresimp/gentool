import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtWebEngine 1.9

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ToolBar {
        id: toolBar
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: parent.width * 0.05
    }

    WebEngineView {
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: toolBar.right
        anchors.right: parent.right
        url: "https://act.hoyolab.com/ys/app/interactive-map/index.html?lang=ja-jp#/map"
    }
}
