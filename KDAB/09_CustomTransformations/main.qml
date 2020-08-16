import QtQuick 2.0

Item{
    id: root
    width: 400
    height: 400

    Rectangle {
        id: larger
        x: 110
        y: 195
        width: 180
        height: 10
        color: "#aa0000"

        transform: Rotation{
            origin.x: larger.width / 2
            origin.y: larger.height / 2
            RotationAnimation on angle{
                from: 0
                to: 360 * 2
                duration: 10000
                loops: Animation.Infinite
            }
        }
    }
}


