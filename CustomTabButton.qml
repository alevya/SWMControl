import QtQuick 2.12
import QtQuick.Controls 2.12

//Item {
//    id: customTabButton
//    default property alias text: control.text
    TabButton{
        id: control

        contentItem: Text{
            text: control.text
            font: control.font
            opacity: enabled ? 1.0 : 0.3
            color:  control.down ? "#808080" : "#000000"

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle{

            implicitWidth: 100
            implicitHeight: 40
            opacity: enabled ? 1 : 0.3
            border.color: control.down ? "#808080" : "#000000"
            border.width: 1
            radius: 2
        }

        function backgroundColor(){
            if(checked)
            {

            }
        }
    }

//}
