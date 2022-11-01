import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtWebEngine 1.9

ApplicationWindow {
    id: root
    width: 640
    height: 480
    title: "GenTool"
    visible: true

    ToolBar {
        id: toolBar
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: parent.width * 0.05
    }

    WebEngineView {
        id: webView
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: toolBar.right
        anchors.right: parent.right
        url: toolBar.urls[toolBar.selectedTool]
        backgroundColor: "black"
    }
}
