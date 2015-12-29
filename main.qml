import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
	title: qsTr("Test GUI v01")

    menuBar: MenuBar {
		Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

	// This object is a placeholder for "contentItem" types,
	// which are defined within "the ApplicationWindow" class.
	// All the objects in the GUI (Design tab) are sub-objects
	// of the "contentItem" object.  Therefore, the way this
	// code is set up implies that the entire "MainForm.ui.qml" file
	// could be copied into the MainForm object and it would
	// have the same effect.  The only thing I still haven't figured
	// out is how this code knows to refer to the "MainForm.ui.qml"
	// file to grab what should be the contents of the MainForm
	// object.  Another important note: In order for UI objects
	// to be programmed here, they must be aliased in the
	// MainForm.ui.qml file.  There is a button in the object
	// navigator pane in the Design view to turn on/off aliases
	// for each object in the tree.
    MainForm {
        anchors.fill: parent

		// Define signals (events) and which slots (handlers) they call.
		sliderHorizontal1.onValueChanged: textField1_update()
		textField1.onDisplayTextChanged: sliderHorizontal1_update()

		// Define slot (handler) functions.

		function textField1_update() {
			if(sliderHorizontal1.pressed) {
				textField1.remove(0,100);
				textField1.insert(0, sliderHorizontal1.value);
			}
		}

		// Javascript expressions can be integrated directly
		// into *certain* places in QML code.
		function sliderHorizontal1_update() {
			if(!sliderHorizontal1.pressed) {
				var a = parseFloat(textField1.text);
				if(textField1.text == "") {
					a = 0;
					textField1.remove(0,100);
					textField1.insert(0,a);
				}
				sliderHorizontal1.value = a;
				console.log(a);
			}
		}

    }

	statusBar: StatusBar {
		RowLayout {
			anchors.fill: parent
			Label { text: "Status bar content..." }
		}

		// Nothing?
	}

/*
    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
*/

}
