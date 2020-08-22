import QtQuick 2.0

Rectangle{
    color: "black"
//    With binding loop
//    width: child.width
//    height: child.height
    implicitWidth: child.implicitWidth
    implicitHeight: child.implicitHeight

    Rectangle {
        id: child
        color: "red"
        anchors.fill: parent
        anchors.margins: 15
    }
}
