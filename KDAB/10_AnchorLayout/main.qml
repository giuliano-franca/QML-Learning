import QtQuick 2.0

Rectangle {
    id: background
    width: 300; height: 100
    color: "lightblue"

    Rectangle{
        color: "green"
        y: 25 // overwritten by the top anchor
        height: 50
        anchors.right: background.right
        anchors.top: background.top
        anchors.left: background.left
        anchors.leftMargin: background.width * 0.1
        anchors.rightMargin: background.width * 0.1
//        same as below
//        anchors{
//            right: background.right
//            top: background.top
//            left: background.left
//            baseline: background.verticalCenter
//            centerIn: parent // Centralize the object by parent parameters
//            fill: parent // Get the x, y, w, h of the parent
//        }
    }
}
