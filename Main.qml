import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 500
    height: 500
    title:"Button"
    color: "lightblue"
        Rectangle {
            width: 200
            height: 200
            color:"red"
            id:firstRectangle
            anchors.centerIn: parent
                Behavior on color {

                    ColorAnimation {
                        duration:100
                    }
                }

                Text {
                    text:"Yazi Alani"
                    id:firstText
                    anchors.centerIn: parent
                }

                property bool isYellow: false
                Button {
                    text:"BUTON"
                    width:100
                    height: 20
                    onClicked: {
                        if(firstRectangle.isYellow) {
                            firstRectangle.color = "red"
                            firstRectangle.isYellow = false
                            console.log("Bu Alan Kirmizi")
                            firstText.text="Bu Alan Kirmizi"
                        } else {
                            firstRectangle.color = "yellow"
                            firstRectangle.isYellow = true
                            console.log("Bu Alan Sari")
                            firstText.text = "Bu Alan Sari"
                        }
                }
                onPressed: scale=0.9
                onReleased: scale=1.1

        }
}
}
