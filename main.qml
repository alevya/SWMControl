import QtQuick 2.12
import QtQuick.Layouts 1.12
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
    title: qsTr("SMW Control")

//    TabWidget{
//        id: mainTabBar
//        anchors.fill: parent

//        Rectangle {
//            property string title: "Red"
//            anchors.fill: parent
//            color: "#e3e3e3"

//            Rectangle {
//                anchors.fill: parent; anchors.margins: 20
//                color: "#ff7f7f"
//                Text {
//                    width: parent.width - 20
//                    anchors.centerIn: parent; horizontalAlignment: Qt.AlignHCenter
//                    text: "Roses are red"
//                    font.pixelSize: 20
//                    wrapMode: Text.WordWrap
//                }
//            }
//        }

//        Rectangle {
//            property string title: "Green"
//            anchors.fill: parent
//            color: "#e3e3e3"

//            Rectangle {
//                anchors.fill: parent; anchors.margins: 20
//                color: "#7fff7f"
//                Text {
//                    width: parent.width - 20
//                    anchors.centerIn: parent; horizontalAlignment: Qt.AlignHCenter
//                    text: "Flower stems are green"
//                    font.pixelSize: 20
//                    wrapMode: Text.WordWrap
//                }
//            }
//        }


//    }

    TabBar {
        id: mainTabBar
        width: parent.width
        background: Rectangle {
            color: "#eeeeee"
        }
//        CustomTabButton {
//            text: qsTr("Main")
//        }

//        CustomTabButton {
//           text: qsTr("Settings")
//        }
        TabButton {
            text: qsTr("Main")

        }

        TabButton {
           text: qsTr("Settings")
        }

    }

    StackLayout {
        anchors.top: mainTabBar.bottom
        width: parent.width
        height: parent.height - mainTabBar.height
        currentIndex: mainTabBar.currentIndex

        MainPage {}
        SettingsPage {}
    }

}

