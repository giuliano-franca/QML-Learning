// Opacity is inherited by childs
// Rotation is clockwise
// transformOrigin to change the anchor point (eg. item.TopLeft)

import QtQuick 2.0

Item{
    width: 500; height: 500
    Rectangle{
        id: firstRect
        x: 50; y: 50
        width: 200
        height: 300
        color: "white"
        opacity: 0.5

        Rectangle{
            x: 100; y: 25
            width: 200
            height: 50
            color: "red"
            opacity: 0.5
        }
        Rectangle{
            x: 100; y: 90
            width: 200
            height: 50
            color: "red"
        }
    }
    Rectangle{
        x: 150; y: 210
        width: 200
        height: 50
        color: "red"
        opacity: 0.5
    }

    Rectangle{
        x: 150; y: 275
        width: 200
        height: 50
        color: "red"
    }
}
