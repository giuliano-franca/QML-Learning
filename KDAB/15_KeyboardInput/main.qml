import QtQuick 2.1

Rectangle{
    width: 500
    height: 312
    color: "lightblue"

    TextInput{
        y: 16
        text: "Field1"
        font.pixelSize: 32
        color: activeFocus ? "black" : "grey"
        activeFocusOnTab: true          // Set tab key to change the focus. Only available in QtQuick 2.1 or above
        anchors{
            left: parent.left
            right: parent.right
        }
    }
    TextInput{
        id: lowerText
        y: 64
        text: "Field2"
        font.pixelSize: 32
        color: activeFocus ? "black" : "gray"
        activeFocusOnTab: true
        anchors{
            left: parent.left
            right: parent.right
        }
    }
    Rectangle{
        id: leftRect
        y: lowerText.height + lowerText.y + 16
        x: 25
        width: 150
        height: 150
        color: activeFocus ? "red" : "darkred"
        KeyNavigation.right: rightRect          // Attach property
        activeFocusOnTab: true
        focus: true
    }
    Rectangle{
        id: rightRect
        y: lowerText.height + lowerText.y + 16
        x: 200
        width: 150
        height: 150
        color: activeFocus ? "#00ff00" : "#008800"
        KeyNavigation.right: leftRect
    }
}
