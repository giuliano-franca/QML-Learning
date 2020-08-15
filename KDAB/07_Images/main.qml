import QtQuick 2.0


Image{
    id: image
    width: 1000
    height: 1000
    source: "https://eoimages.gsfc.nasa.gov/images/imagerecords/74000/74393/world.topo.200407.3x5400x2700.jpg"
    Component.onCompleted: console.log(width, height, sourceSize)
    fillMode: Image.PreserveAspectFit
    onStatusChanged: console.log(sourceSize)

    Rectangle{
        color: "red"
        x: 0; y: 950
        height: 50
        width: 1000 * image.progress
        visible: image.progress != 1
    }
}
