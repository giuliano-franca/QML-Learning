import QtQuick 2.0

Rectangle{
    id: root
    width: 400; height: 400
    color: "grey"

    Rectangle{
        id: lightblue
        color: "lightblue"
        x: 50; y: 50
        width: root.width - 100
        height: root.height / 2 - 50
        clip: true

        Rectangle{
            x: 50; y: 50
            width: 50; height: 50
            color: "white"
        }
    }

    Rectangle{
        color: "green"
        x: 50
        y: lightblue.x + lightblue.height
        width: root.width - 100
        height: root.height / 2 - 50
        clip: true

        Rectangle{
            color: "blue"
            x: -50; y: 50
            width: 150; height: 50
        }
    }
}
