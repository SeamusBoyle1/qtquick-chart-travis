import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtCharts 2.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
        }

        Page {
            ChartView {
                title: "Line"
                antialiasing: true
                anchors.fill: parent

                LineSeries {
                    name: "LineSeries"
                    XYPoint {
                        x: 0
                        y: 0
                    }
                    XYPoint {
                        x: 1.1
                        y: 2.1
                    }
                    XYPoint {
                        x: 1.9
                        y: 3.3
                    }
                    XYPoint {
                        x: 2.1
                        y: 2.1
                    }
                    XYPoint {
                        x: 2.9
                        y: 4.9
                    }
                    XYPoint {
                        x: 3.4
                        y: 3.0
                    }
                    XYPoint {
                        x: 4.1
                        y: 3.3
                    }
                }
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }
    }
}
