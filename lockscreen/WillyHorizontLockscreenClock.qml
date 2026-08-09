/*
 *    SPDX-FileCopyrightText: 2016 David Edmundson <davidedmundson@kde.org>
 *    SPDX-FileCopyrightText: 2025 Thomas Duckworth <tduck@filotimoproject.org>
 *
 *    SPDX-License-Identifier: LGPL-2.0-or-later
 */

import QtQuick
import QtQuick.Layouts

import org.kde.plasma.clock as PlasmaClock
import org.kde.plasma.components as PlasmaComponents3
import org.kde.kirigami as Kirigami

ColumnLayout {
    id: root

    readonly property bool softwareRendering: GraphicsInfo.api === GraphicsInfo.Software

    PlasmaComponents3.Label {
        // text: Qt.formatTime(timeSource.dateTime, Qt.locale(), Locale.ShortFormat)
        text: Qt.formatTime(timeSource.dateTime, "hh:mm:ss | hh:mm:ss AP")
        textFormat: Text.PlainText
        style: root.softwareRendering ? Text.Outline : Text.Normal
        styleColor: root.softwareRendering ? Kirigami.Theme.backgroundColor : "transparent" //no outline, doesn't matter
        font.pointSize: Math.round(Kirigami.Theme.defaultFont.pointSize * 6.0)
        font.weight: Font.DemiBold
        font.letterSpacing: -3.0
        font.wordSpacing: 3.0
        renderType: Text.NativeRendering // looks better than QtTextRendering at large size, while CurveRendering suffers from jagged diagonals with some fonts (QTBUG-146898)
        Layout.alignment: Qt.AlignHCenter
    }
    function getSecondaryLabelText() {
        const curClock = new Date();
        const totalDays = new Date(curClock.getFullYear(), curClock.getMonth() + 1, 0).getDate();
        return Qt.formatDateTime(curClock, "MM / 12 'months'") + " | " + Qt.formatDateTime(curClock, "dd / " + totalDays + " 'days'") + " | " + Qt.formatDateTime(curClock, "ddd, dd MMM yyyy");
    }
    PlasmaComponents3.Label {
        // text: Qt.formatDate(timeSource.dateTime, Qt.locale(), Locale.LongFormat)
        // text: Qt.formatDate(timeSource.dateTime, "ddd, dd MMM yyyy")
        text: getSecondaryLabelText()
        textFormat: Text.PlainText
        style: root.softwareRendering ? Text.Outline : Text.Normal
        styleColor: root.softwareRendering ? Kirigami.Theme.backgroundColor : "transparent" //no outline, doesn't matter
        font.pointSize: Math.round(Kirigami.Theme.defaultFont.pointSize * 2.4)
        renderType: Text.NativeRendering // looks better than QtTextRendering at large sizes, while CurveRendering suffers from jagged diagonals with some fonts (QTBUG-146898)
        Layout.alignment: Qt.AlignHCenter
    }

    PlasmaClock.Clock {
        id: timeSource
        trackSeconds: true
    }
}
