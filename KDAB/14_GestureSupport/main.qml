import QtQuick 2.0

// Tutorial skipped
// Signals in QML starts with on (eg. onClicked -> clicked signal)

Flickable{
    id: flick
    width: 400; height: 400
    contentWidth: 1000
    contentHeight: 1000

    Rectangle{
        width: flick.contentWidth
        height: flick.contentHeight
        color: "red"
    }
}
