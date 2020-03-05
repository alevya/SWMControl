import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Universal 2.12
import QtQuick.Shapes 1.12
import QtQuick.Controls.Styles 1.4
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:94;anchors_y:54}
}
##^##*/
