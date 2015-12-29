import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
	id: item1
	width: 800
	property alias textField1: textField1
	property alias sliderHorizontal1: sliderHorizontal1
	antialiasing: false

	SplitView {
		id: splitView1
		x: 64
		y: 30
		width: 545
		height: 420

		Column {
			id: column1
			width: 523
			height: 227
			anchors.left: parent.left
			anchors.top: parent.top
			anchors.leftMargin: 0
			anchors.topMargin: 0
			spacing: 0
			z: -1

			Row {
				id: row1
				height: 46
				anchors.right: parent.right
				anchors.rightMargin: 0
				anchors.top: parent.top
				anchors.topMargin: 0
				anchors.left: parent.left
				anchors.leftMargin: 0

				Label {
					id: label1
					text: qsTr("Output Write")
					anchors.right: parent.left
					anchors.rightMargin: -130
					horizontalAlignment: Text.AlignRight
					anchors.verticalCenter: parent.verticalCenter
					anchors.left: parent.left
					anchors.leftMargin: 0
				}

				Slider {
					id: sliderHorizontal1
					activeFocusOnPress: true
					tickmarksEnabled: false
					stepSize: 0.02
					maximumValue: 5
					anchors.right: parent.right
					anchors.rightMargin: 100
					anchors.left: label1.right
					anchors.leftMargin: 25
					anchors.verticalCenter: parent.verticalCenter
					anchors.top: parent.top
					anchors.topMargin: 0
				}

				Label {
					id: label3
					text: qsTr("V")
					anchors.verticalCenter: textField1.verticalCenter
					anchors.left: textField1.right
					anchors.leftMargin: 0
				}

				TextField {
					id: textField1
					width: 60
					height: 20
					anchors.left: sliderHorizontal1.right
					anchors.leftMargin: 10
					anchors.verticalCenter: parent.verticalCenter
					font.pointSize: 11
					placeholderText: qsTr("Text Field")
				}
			}

			Row {
				id: row2
				height: 46
				anchors.rightMargin: 0
				Label {
					id: label2
					text: qsTr("Input Read")
					anchors.rightMargin: -130
					anchors.verticalCenter: parent.verticalCenter
					horizontalAlignment: Text.AlignRight
					anchors.right: parent.left
					anchors.left: parent.left
					anchors.leftMargin: 0
				}

				Label {
					id: label4
					text: qsTr("V")
					anchors.verticalCenter: textField2.verticalCenter
					anchors.left: textField2.right
					anchors.leftMargin: 0
				}

				TextField {
					id: textField2
					width: 60
					height: 20
					anchors.verticalCenter: parent.verticalCenter
					placeholderText: qsTr("Text Field")
					anchors.left: label2.right
					font.pointSize: 11
					anchors.leftMargin: 25
				}
				anchors.top: row1.bottom
				anchors.right: parent.right
				anchors.topMargin: 0
				anchors.left: parent.left
				anchors.leftMargin: 0
			}
		}
	}

}
