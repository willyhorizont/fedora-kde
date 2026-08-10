import QtQuick
import QtQuick.Layouts

import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore

PlasmoidItem {
    id: root

    Layout.fillWidth: true
    Layout.preferredWidth: spaceAvailableLabel.implicitWidth + 4

    Component.onCompleted: {
        spaceAvailableLabel.text = "willyhorizont.github.io";
    }

    Text {
        id: spaceAvailableLabel
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        color: "#ffffff"
        font.pixelSize: parent.height * 0.6
        elide: Text.ElideNone
    }
}
