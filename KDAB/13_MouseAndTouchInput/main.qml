import QtQuick 2.0

// Rectangle.color: MouseArea.containsMouse ? "green" : "cyan" | Check if the mouse is on MouseArea

Rectangle{
    width: 400; height: 300
    color: "lightblue"

//    Text{
//        id: text1
//        anchors.horizontalCenter: parent.horizontalCenter
//        y: 40
//        height: parent.height / 2
//        text: "Press me"
//        font.pixelSize: 48
//        MouseArea{
//            anchors.fill: parent
//            onPressed: parent.color = "green"
//            onReleased: parent.color = "black"
//        }
//    }

//    Text{
//        anchors.horizontalCenter: parent.horizontalCenter
//        y: parent.height / 2 + text1.y
//        height: parent.height / 2
//        text: "Click me"
//        font.pixelSize: 48
//        MouseArea{
//            anchors.fill: parent
//            onClicked: parent.font.bold = !parent.font.bold
//        }
//    }
    Text{
        anchors.centerIn: parent
        text: "Press me"
        font.pixelSize: 48
        color: mouseArea.pressed ? "green" : "black"
        MouseArea{
            id: mouseArea
            anchors.fill: parent
            propagateComposedEvents: true // Don't know how this works
            onClicked: {
                mouse.accepted = false; // Ignore this event
                console.log("Button clicked.")
            }
        }
    }
}
