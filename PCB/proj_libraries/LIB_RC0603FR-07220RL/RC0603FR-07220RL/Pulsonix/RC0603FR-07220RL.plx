PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//290366/983811/2.49/2/5/Resistor

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r110_100"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1) (shapeHeight 1.1))
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
	(patternDef "RESC1608X55N" (originalName "RESC1608X55N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r110_100) (pt -0.65, 0) (rotation 90))
			(pad (padNum 2) (padStyleRef r110_100) (pt 0.65, 0) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -0.85 -0.475) (pt 0.85 -0.475) (width 0.001))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 0.85 -0.475) (pt 0.85 0.475) (width 0.001))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 0.85 0.475) (pt -0.85 0.475) (width 0.001))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -0.85 0.475) (pt -0.85 -0.475) (width 0.001))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.45 -0.75) (pt 1.45 -0.75) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.45 -0.75) (pt 1.45 0.75) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.45 0.75) (pt -1.45 0.75) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.45 0.75) (pt -1.45 -0.75) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(arc (pt 0, 0) (radius 0) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 0 -0.5) (pt 0 0.5) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -0.5 0) (pt 0.5 0) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.8 -0.4) (pt 0.8 -0.4) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.8 -0.4) (pt 0.8 0.4) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.8 0.4) (pt -0.8 0.4) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.8 0.4) (pt -0.8 -0.4) (width 0.025))
		)
	)
	(symbolDef "RC0603FR-07220RL" (originalName "RC0603FR-07220RL")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 0 mils -35 mils) (rotation 0]) (justify "UpperLeft") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 700 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 700 mils -35 mils) (rotation 0]) (justify "UpperRight") (textStyleRef "Normal"))
		))
		(line (pt 200 mils 50 mils) (pt 500 mils 50 mils) (width 6 mils))
		(line (pt 500 mils 50 mils) (pt 500 mils -50 mils) (width 6 mils))
		(line (pt 500 mils -50 mils) (pt 200 mils -50 mils) (width 6 mils))
		(line (pt 200 mils -50 mils) (pt 200 mils 50 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 550 mils 250 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 550 mils 150 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "RC0603FR-07220RL" (originalName "RC0603FR-07220RL") (compHeader (numPins 2) (numParts 1) (refDesPrefix R)
		)
		(compPin "1" (pinName "1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "2" (pinName "2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Unknown))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "RC0603FR-07220RL"))
		(attachedPattern (patternNum 1) (patternName "RESC1608X55N")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Mouser Part Number" "603-RC0603FR-07220RL")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/YAGEO/RC0603FR-07220RL?qs=VU8sRB4EgwA1IyQ0vhXEEw%3D%3D")
		(attr "Manufacturer_Name" "KEMET")
		(attr "Manufacturer_Part_Number" "RC0603FR-07220RL")
		(attr "Description" "YAGEO (PHYCOMP) - RC0603FR-07220RL - RES, THICK FILM, 220R, 1%, 0.1W, 0603")
		(attr "<Hyperlink>" "https://datasheet.datasheetarchive.com/originals/distributors/Datasheets_SAMA/902f9e387b938f871d31120f5fc1d65e.pdf")
		(attr "<Component Height>" "0.55")
		(attr "<STEP Filename>" "RC0603FR-07220RL.stp")
		(attr "<STEP Offsets>" "X=0;Y=0;Z=0")
		(attr "<STEP Rotation>" "X=0;Y=0;Z=0")
	)

)
