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
        id: webViewMap
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: toolBar.right
        anchors.right: parent.right
        url: "https://act.hoyolab.com/ys/app/interactive-map/index.html?lang=ja-jp#/map/2?shown_types=2,3,154,403,356&center=4675.47,-5503.88&zoom=-0.50"
        backgroundColor: "black"
        visible: toolBar.selectedTool === 0
    }
    WebEngineView {
        id: webViewAchiv
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: toolBar.right
        anchors.right: parent.right
        url: "http://192.168.0.232/app/fgt/"
        backgroundColor: "black"
        visible: toolBar.selectedTool === 1
    }
}
