import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 300
    height: 300    
    //maximized: true  // Set the window to be maximized
    title: "Clock Example"

    // Center the clock in the window
    Rectangle {
        id: clockFace
        anchors.fill: parent

        // Clock Background.
        // Image {
        //     sourceSize.width: parent.width
        //     sourceSize.height: parent.height
        //     anchors.fill: parent
        //     fillMode: Image.PreserveAspectCrop
        //     source: "./Images/background.png"
        // }

        // Clock face.
        Image {
            id: clockface
            sourceSize.width: parent.width
            sourceSize.height: parent.height
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "./Images/clockface2.png"
        }

        // Clock Hour hand.
        Image {
            id: hourHand
            height: clockFace.height * 0.30
            fillMode: Image.PreserveAspectFit
            source: "./Images/hour2.png"
            anchors.bottom: clockFace.verticalCenter
            anchors.horizontalCenter: clockFace.horizontalCenter
            transform: Rotation {
                id: hourRotation
                origin.x: hourHand.width / 2
                origin.y: hourHand.height
                angle: 0
            }
        }

        // Clock Minute hand
        Image {
            id: minuteHand
            height: clockFace.height * 0.42
            fillMode: Image.PreserveAspectFit
            source: "./Images/minute2.png"
            anchors.bottom: clockFace.verticalCenter
            anchors.horizontalCenter: clockFace.horizontalCenter
            transform: Rotation {
                id: minuteRotation
                origin.x: minuteHand.width / 2
                origin.y: minuteHand.height
                angle: 0
            }
        }

        // Clock Second hand
        Image {
            id: secondHand
            height: clockFace.height * 0.44
            fillMode: Image.PreserveAspectFit
            source: "./Images/second3.png"
            anchors.bottom: clockFace.verticalCenter
            anchors.horizontalCenter: clockFace.horizontalCenter
            transform: Rotation {
                id: secondRotation
                origin.x: secondHand.width / 2
                origin.y: secondHand.height
                angle: 0
            }
        }

        // Clock Cap
        Rectangle {
            id: gradientCircle
            height: clockFace.height * 0.090
            width: clockFace.height * 0.090
            anchors.centerIn: parent // Center the circle in the window
            //color: "grey"

            // Make the rectangle a circle by setting radius to half of width/height
            radius: width * 0.5

            // Define the gradient fill
            gradient: Gradient {
                // Define gradient stops with gray and black
                GradientStop { position: 0.0; color: "black" } // Start with black
                GradientStop { position: 1.0; color: "gray" } //  End with gray
            }
        }
    }

    // Timer to update the clock hands every second
    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            var date = new Date();
            var seconds = date.getSeconds();
            var minutes = date.getMinutes() + seconds / 60;
            var hours = date.getHours() + minutes / 60;

            secondRotation.angle = seconds * 6;
            minuteRotation.angle = minutes * 6;
            hourRotation.angle = (hours % 12) * 30;
        }
    }
}
