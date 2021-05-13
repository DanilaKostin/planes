import QtQuick 2.0


Rectangle{
    id: plane


x:400
y:400
width: 90
height: 90
color: "transparent"
Image{
    source: "qrc:/red_plane.png"
    width: 90
    height: 90

}
Timer{
    interval: 100;          running: true; repeat: true;

    onTriggered:{

        if (plane.x > 1105 || plane.x < 0){

            y_s*=-1
            x_s*=-1
            plane.y +=2*y_s
            plane.x +=2*x_s
        plane.rotation -=180 }
        else {
            plane.x += x_s
        }

        if (plane.y > 660 || plane.y < 0){
            y_s*=-1
            x_s*=-1
            plane.y +=2*y_s
            plane.x +=2*x_s
        plane.rotation -=180 }
        else {
            plane.y +=y_s}
    }
}
    MouseArea{
        acceptedButtons: Qt.LeftButton
        anchors.fill: plane
        onClicked: {
            if(Qt.LeftButton){
                contry = true
            }
        }
    }
}




