import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtWebEngine 1.9

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    WebEngineView {
        anchors.fill: parent
        url: "https://act.hoyolab.com/ys/app/interactive-map/index.html?lang=ja-jp#/map"
    }
}
