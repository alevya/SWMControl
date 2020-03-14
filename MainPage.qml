import QtQuick 2.0
import QtQuick.Layouts 1.12

Item{
    id: mainTab
    //anchors.fill: parent
    GridLayout {
        id: gridLayout;
        height: 200
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
    }


}
