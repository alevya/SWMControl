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

        TabButton {
            text: qsTr("Main")
            transformOrigin: Item.Center
        }

        TabButton {
           text: qsTr("Settings")
        }

    }

    StackLayout {
        anchors.top: mainTabBar.bottom
        width: parent.width
        currentIndex: mainTabBar.currentIndex

//        Item{
//            id: mainTab
//            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
//            Layout.fillHeight: true
//            Layout.fillWidth: true
//            anchors.fill: parent
            GridLayout {
                id: gridLayout;
                height: 19
                anchors.fill: parent
                rows: 3;
                columns: 3;

                Rectangle {
                     color: "red"
                     Layout.fillHeight: true
                     Layout.fillWidth: true
                     Layout.columnSpan: 2
                     Layout.rowSpan: 1
                     Layout.row: 1
                     Layout.column: 2
                }

                Rectangle {
                     color: "blue"
                     Layout.fillHeight: true
                     Layout.fillWidth: true
                     Layout.columnSpan: 1
                     Layout.rowSpan: 2
                     Layout.row: 1
                     Layout.column: 1
                }

                Rectangle {
                     color: "green"
                     Layout.fillHeight: true
                     Layout.fillWidth: true
                     Layout.columnSpan: 1
                     Layout.rowSpan: 2
                     Layout.row: 2
                     Layout.column: 3
                }

                Rectangle {
                     color: "white"
                     Layout.fillHeight: true
                     Layout.fillWidth: true
                     Layout.columnSpan: 1
                     Layout.rowSpan: 1
                     Layout.row: 2
                     Layout.column: 2
                }

                Rectangle {
                     color: "yellow"
                     Layout.fillHeight: true
                     Layout.fillWidth: true
                     Layout.columnSpan: 2
                     Layout.rowSpan: 1
                     Layout.row: 3
                     Layout.column: 1
                }
       // }


    }
        Item {
            id: settingsTab
        }
    }

}

