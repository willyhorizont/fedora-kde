import QtQuick
import QtQuick.Layouts

import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore

PlasmoidItem {
    id: root

    Layout.minimumWidth: timeLabel.implicitWidth + 4

    Timer {
        id: clockTimer
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            timeLabel.text = getClock();
        }
    }

    function getClock() {
        const curClock = new Date();
        const totalDays = new Date(curClock.getFullYear(), curClock.getMonth() + 1, 0).getDate();
        return Qt.formatDateTime(curClock, "MM / 12 'months'") + " | " + Qt.formatDateTime(curClock, "dd / " + totalDays + " 'days'") + " | " + Qt.formatDateTime(curClock, "ddd, dd MMM yyyy") + " | " + Qt.formatDateTime(curClock, "hh:mm:ss") + " | " + Qt.formatDateTime(curClock, "hh:mm:ss AP");
    }

    Component.onCompleted: {
        timeLabel.text = getClock();
    }

    Text {
        id: timeLabel
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        color: "#ffffff"
        font.pixelSize: parent.height * 0.6
        elide: Text.ElideNone
    }
}
