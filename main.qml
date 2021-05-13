import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    property double x_s: 0
    property double y_s: 0

    property double xold: 0
    property double yold: 0

    property bool contry: true

    property alias x_plane: planer.x
    property alias y_plane: planer.y

    id: main
    width: 1200
    height: 800
    minimumWidth:1200
    maximumWidth: 1200

    color: "white"
    minimumHeight:800
    maximumHeight:800

    Image{
        source: "qrc:/fon.jpg"
        height: 750
        width: 1200
    }





    function vector(){
        var nor_vect = helper.vector(xold, yold)
        x_s = nor_vect[0]*8
        y_s = nor_vect[1]*8
    }

    function reject(x1, y1){

    }

    MouseArea{
        id: ma
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            if(mouse.button === Qt.RightButton){
                contry = false
                console.log(contry)

            }
            if(mouse.button === Qt.LeftButton && contry)
            {

                xold = mouse.x - planer.x - 45
                yold = mouse.y - planer.y - 45

                vector()

                var proectia_y = planer.x + 45

                var p = helper.atang(xold, yold);

                planer.rotation = p[0];
            }
        }

    }
    Plane{
        id: planer
    }

    visible: true
    title: qsTr("Airport")
}
