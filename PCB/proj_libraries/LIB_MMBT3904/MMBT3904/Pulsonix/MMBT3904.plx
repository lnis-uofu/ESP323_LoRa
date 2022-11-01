PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//1154885/983811/2.49/3/3/Integrated Circuit

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r100_70"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.7) (shapeHeight 1))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Normal"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1.27)
			(strokeWidth 0.127)
		)
	)
	(patternDef "SOT95P240X120-3N" (originalName "SOT95P240X120-3N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r100_70) (pt -1.2, 0.95) (rotation 90))
			(pad (padNum 2) (padStyleRef r100_70) (pt -1.2, -0.95) (rotation 90))
			(pad (padNum 3) (padStyleRef r100_70) (pt 1.2, 0) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.95 1.81) (pt 1.95 1.81) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.95 1.81) (pt 1.95 -1.81) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.95 -1.81) (pt -1.95 -1.81) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.95 -1.81) (pt -1.95 1.81) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.662 1.46) (pt 0.662 1.46) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.662 1.46) (pt 0.662 -1.46) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.662 -1.46) (pt -0.662 -1.46) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.662 -1.46) (pt -0.662 1.46) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.662 0.51) (pt 0.288 1.46) (width 0.025))
		)
		(layerContents (layerNumRef 18)
			(line (pt -0.35 1.46) (pt 0.35 1.46) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 0.35 1.46) (pt 0.35 -1.46) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 0.35 -1.46) (pt -0.35 -1.46) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -0.35 -1.46) (pt -0.35 1.46) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.7 1.55) (pt -0.7 1.55) (width 0.2))
		)
	)
	(symbolDef "MMBT3904" (originalName "MMBT3904")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 3) (pt 800 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 570 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(line (pt 200 mils 100 mils) (pt 600 mils 100 mils) (width 6 mils))
		(line (pt 600 mils 100 mils) (pt 600 mils -200 mils) (width 6 mils))
		(line (pt 600 mils -200 mils) (pt 200 mils -200 mils) (width 6 mils))
		(line (pt 200 mils -200 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 650 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 650 mils 200 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "MMBT3904" (originalName "MMBT3904") (compHeader (numPins 3) (numParts 1) (refDesPrefix IC)
		)
		(compPin "1" (pinName "B") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "2" (pinName "E") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "3" (pinName "C") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Unknown))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "MMBT3904"))
		(attachedPattern (patternNum 1) (patternName "SOT95P240X120-3N")
			(numPads 3)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
			)
		)
		(attr "Mouser Part Number" "")
		(attr "Mouser Price/Stock" "")
		(attr "Manufacturer_Name" "Diotec")
		(attr "Manufacturer_Part_Number" "MMBT3904")
		(attr "Description" "Trans GP BJT NPN 40V 0.2A Automotive 3-Pin SOT-23")
		(attr "<Hyperlink>" "https://media.digikey.com/pdf/Data%20Sheets/ON%20Semiconductor%20PDFs/2N3904,MMBT3904,PZT3904.pdf")
		(attr "<Component Height>" "1.2")
		(attr "<STEP Filename>" "MMBT3904.stp")
		(attr "<STEP Offsets>" "X=0;Y=0;Z=0")
		(attr "<STEP Rotation>" "X=0;Y=0;Z=0")
	)

)