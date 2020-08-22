import QtQuick 2.0

// SVG colors = "red", "green", "blue", "black", "transparent"
// Hexadecimal colors = #<aa><rr><gg><bb> (alpha optional)
// Qt colors = Qt.rgba(0, 0.5, 0, 1) (rgba)

Item{
    width: 450
    height: 100

    Rectangle{
        x: 0; y:0
        width: 100
        height: 100
        color: "#ff0000"
    }
    Rectangle{
        x: 100; y: 0
        width: 100
        height: 100
        color: Qt.rgba(0, 0.75, 0, 1)
    }
    Rectangle{
        x: 200; y: 0
        width: 100
        height: 100
        color: "blue"
    }
    Rectangle{
        width: 100
        height: 100
        x: 350
        rotation: 90
        gradient: Gradient{
            GradientStop{
                position: 0.0; color: "green"
            }
            GradientStop{
                position: 1.0; color: "blue"
            }
        }
    }
}
