import QtQuick 2.4
import Ubuntu.Components 1.2

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "expandinglist.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
//    useDeprecatedToolbar: false

    width: units.gu(60)
    height: units.gu(85)

    Page {
        id: mainpage
        title: i18n.tr("expandinglist")
        flickable: null

        ListView {
            id: listView
            anchors.fill: parent
            clip: true
            model: RecipesModel {}
            delegate: RecipesDelegate {}
        }
    }
}

