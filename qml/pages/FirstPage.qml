import QtQuick 2.0
import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.0

Page {
	
	function parseLength(len){
		return len*18;
	}
        Image {
            id: painoPic
			anchors.fill:parent
            width: parent.width
            height: parent.height
            source: "index.png"

            MouseArea {
                id: mouseAreaC1
                x: parseLength(0/18)
                y: parseLength(0/18)
                width: parseLength(424/18)
                height: parseLength(134/18)
                onPressed: { playC.play() }
                onExited: { playC.stop() }
				onClicked:{console.log("C1")}
            }

            MouseArea {
                id: mouseAreaB2
                x: parseLength(424/18)
                y: parseLength(864/18)
                width: parseLength(798/18)
                height: parseLength(77/18)
                onPressed: { playB.play() }
                onExited: { playB.stop() }
				onClicked:{console.log("B2")}
            }

            MouseArea {
                id: mouseAreaGsharp
                x: parseLength(424/18)
                y: parseLength(632/18)
                width: parseLength(798/18)
                height: parseLength(78/18)
                onPressed: { playGsharp.play() }
                onExited: { playGsharp.stop() }
            }

            MouseArea {
                id: mouseAreaG2
                x: parseLength(424/18)
                y: parseLength(562/18)
                width: parseLength(798/18)
                height: parseLength(70/18)
                onPressed: { playG.play() }
                onExited: { playG.stop() }
            }

            MouseArea {
                id: mouseAreaFsharp
                x: parseLength(424/18)
                y: parseLength(484/18)
                width: parseLength(798/18)
                height: parseLength(78/18)
                onPressed: { playFsharp.play() }
                onExited: { playFsharp.stop() }
            }

            MouseArea {
                id: mouseAreaF2
                x: parseLength(424/18)
                y: parseLength(408/18)
                width: parseLength(798/18)
                height: parseLength(76/18)
                onPressed: { playF.play() }
                onExited: { playF.stop() }
            }

            MouseArea {
                id: mouseAreaE2
                x: parseLength(424/18)
                y: parseLength(322/18)
                width: parseLength(798/18)
                height: parseLength(86/18)
                onPressed: { playE.play() }
                onExited: { playE.stop() }
				onClicked:{console.log("E2")}
            }

            MouseArea {
                id: mouseAreaDsharp
                x: parseLength(424/18)
                y: parseLength(235/18)
                width: parseLength(798/18)
                height: parseLength(87/18)
                onPressed: { playDsharp.play() }
                onExited: { playDsharp.stop() }
            }

            MouseArea {
                id: mouseAreaD2
                x: parseLength(424/18)
                y: parseLength(170/18)
                width: parseLength(798/18)
                height: parseLength(65/18)
                onPressed: { playD.play() }
                onExited: { playD.stop() }
            }

            MouseArea {
                id: mouseAreaCsharp
                x: parseLength(424/18)
                y: parseLength(78/18)
                width: parseLength(798/18)
                height: parseLength(92/18)
                onPressed: { playCsharp.play() }
                onExited: { playCsharp.stop() }
            }

            MouseArea {
                id: mouseAreaC2
                x: parseLength(424/18)
                y: parseLength(0/18)
                width: parseLength(798/18)
                height: parseLength(78/18)
                onPressed: { playC.play() }
                onExited: { playC.stop() }
				onClicked:{console.log("C2")}
            }

            MouseArea {
                id: mouseAreaC3
                x: parseLength(0/18)
                y: parseLength(941/18)
                width: parseLength(424/18)
                height: parseLength(120/18)
                onPressed: { playChigh.play() }
                onExited: { playChigh.stop() }
            }

            MouseArea {
                id: mouseAreaB1
                x: parseLength(0/18)
                y: parseLength(810/18)
                width: parseLength(424/18)
                height: parseLength(131/18)
                onPressed: { playB.play() }
                onExited: { playB.stop() }
            }

            MouseArea {
                id: mouseAreaA1
                x: parseLength(0/18)
                y: parseLength(678/18)
                width: parseLength(424/18)
                height: parseLength(132/18)
                onPressed: { playA.play() }
                onExited: { playA.stop() }
            }

            MouseArea {
                id: mouseAreaG1
                x: parseLength(0/18)
                y: parseLength(538/18)
                width: parseLength(424/18)
                height: parseLength(140/18)
                onPressed: { playG.play() }
                onExited: { playG.stop() }
				onClicked:{console.log("G1")}
            }

            MouseArea {
                id: mouseAreaF1
                x: parseLength(0/18)
                y: parseLength(408/18)
                width: parseLength(424/18)
                height: parseLength(130/18)
                onPressed: { playF.play() }
                onExited: { playF.stop() }
            }

            MouseArea {
                id: mouseAreaE1
                x: parseLength(0/18)
                y: parseLength(272/18)
                width: parseLength(424/18)
                height: parseLength(136/18)
                onPressed: { playE.play() }
                onExited: { playE.stop() }
            }

            MouseArea {
                id: mouseAreaD1
                x: parseLength(0/18)
                y: parseLength(134/18)
                width: parseLength(424/18)
                height: parseLength(138/18)
                onPressed: { playD.play() }
                onExited: { playD.stop() }
            }

            MouseArea {
                id: mouseAreaC4
                x: parseLength(424/18)
                y: parseLength(941/18)
                width: parseLength(798/18)
                height: parseLength(120/18)
                onPressed: { playChigh.play() }
                onExited: { playChigh.stop() }
				onClicked:{console.log("C4")}
            }

            MouseArea {
                id: mouseAreaAsharp
                x: parseLength(424/18)
                y: parseLength(780/18)
                width: parseLength(798/18)
                height: parseLength(84/18)
                onPressed: { playAsharp.play() }
                onExited: { playAsharp.stop() }
            }

            MouseArea {
                id: mouseAreaA2
                x: parseLength(424/18)
                y: parseLength(710/18)
                width: parseLength(798/18)
                height: parseLength(70/18)
                onPressed: { playA.play() }
                onExited: { playA.stop() }
				onClicked:{console.log("A2")}
            }
        }
        SoundEffect {
            id: playC
            source: "music/C4_trimmed.wav"
			volume:2.5
        }
        SoundEffect {
            id: playCsharp
            source: "music/Csharp4_trimmed.wav"
			volume:2.5
        }
        SoundEffect {
            id: playD
            source: "music/D4_trimmed.wav"
			volume:2.5
        }
        SoundEffect {
            id: playDsharp
            source: "music/Dsharp4_trimmed.wav"
			volume:2.5
        }
        SoundEffect {
            id: playE
            source: "music/E4_trimmed.wav"
			volume:2.5
        }
        SoundEffect {
            id: playF
            source: "music/F4_trimmed.wav"
			volume:2.5
        }
        SoundEffect {
            id: playFsharp
            source: "music/Fsharp4_trimmed.wav"
			volume:2.5
        }
        SoundEffect {
            id: playG
            source: "music/G4_trimmed.wav"
			volume:2.5
        }
        SoundEffect {
            id: playGsharp
            source: "music/Gsharp4_trimmed.wav"
			volume:2.5
        }
        SoundEffect {
            id: playA
            source: "music/A4_trimmed.wav"
			volume:2.5
        }
        SoundEffect {
            id: playAsharp
            source: "music/Asharp4_trimmed.wav"
			volume:2.5
        }
        SoundEffect {
            id: playB
            source: "music/B4_trimmed.wav"
			volume:2.5
        }
        SoundEffect {
            id: playChigh
            source: "music/C5_trimmed.wav"
			volume:2.5
        }
    }


