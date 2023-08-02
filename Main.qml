import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Mocked Games"

    // Define the JavaScript array for mocked games
    property var allGames: [{
            "title": "Game 1",
            "description": "Description for Game 1"
        }, {
            "title": "Game 2",
            "description": "Description for Game 2"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }, {
            "title": "Game 3",
            "description": "Description for Game 3"
        }]

    property int visibleGameCount: 3
    property bool allGamesLoaded: false
    property real prevContentY: 0

    Flickable {
        id: flickable
        anchors.fill: parent
        contentHeight: flow.height
        boundsBehavior: Flickable.StopAtBounds

        onContentYChanged: {
            if (contentY + flickable.height >= contentHeight - 10
                    && prevContentY < contentY) {
                onReachedBottom()
                console.log('chegou')
            }
            prevContentY = contentY
        }

        Flow {
            id: flow
            width: flickable.width
            spacing: 10

            Repeater {
                model: Math.min(allGames.length, visibleGameCount)
                delegate: Rectangle {
                    width: 300
                    height: 300
                    color: 'red'

                    ColumnLayout {
                        anchors.fill: parent

                        Text {
                            text: allGames[index].title
                        }

                        Text {
                            text: allGames[index].description
                        }
                    }
                }
            }
        }
    }

    function onReachedBottom() {
        if (visibleGameCount < allGames.length) {
            var remainingGames = allGames.length - visibleGameCount
            visibleGameCount += Math.min(3, remainingGames)
        } else {

            allGamesLoaded = true
        }
    }
}
