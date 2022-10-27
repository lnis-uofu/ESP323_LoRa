PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//245145/983811/2.49/2/3/Resistor

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r95_80"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.8) (shapeHeight 0.95))
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
			(pad (padNum 1) (padStyleRef r95_80) (pt -0.8, 0) (rotation 0))
			(pad (padNum 2) (padStyleRef r95_80) (pt 0.8, 0) (rotation 0))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.45 0.75) (pt 1.45 0.75) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.45 0.75) (pt 1.45 -0.75) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.45 -0.75) (pt -1.45 -0.75) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.45 -0.75) (pt -1.45 0.75) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.8 0.4) (pt 0.8 0.4) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.8 0.4) (pt 0.8 -0.4) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.8 -0.4) (pt -0.8 -0.4) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.8 -0.4) (pt -0.8 0.4) (width 0.025))
		)
		(layerContents (layerNumRef 18)
			(line (pt 0 0.3) (pt 0 -0.3) (width 0.2))
		)
	)
	(symbolDef "RC0603FR-0710KL" (originalName "RC0603FR-0710KL")

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
	(compDef "RC0603FR-0710KL" (originalName "RC0603FR-0710KL") (compHeader (numPins 2) (numParts 1) (refDesPrefix R)
		)
		(compPin "1" (pinName "1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "2" (pinName "2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Unknown))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "RC0603FR-0710KL"))
		(attachedPattern (patternNum 1) (patternName "RESC1608X55N")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Mouser Part Number" "603-RC0603FR-0710KL")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/YAGEO/RC0603FR-0710KL?qs=grNVn54RoB%252B3GtjbJj3wJQ%3D%3D")
		(attr "Manufacturer_Name" "KEMET")
		(attr "Manufacturer_Part_Number" "RC0603FR-0710KL")
		(attr "Description" "Yageo RC Series Thick Film Surface Mount Resistor 0603 Case 10k")
		(attr "<Hyperlink>" "https://datasheet.datasheetarchive.com/originals/distributors/Datasheets_SAMA/902f9e387b938f871d31120f5fc1d65e.pdf")
		(attr "<Component Height>" "0.55")
		(attr "<STEP Filename>" "RC0603FR-0710KL.stp")
		(attr "<STEP Offsets>" "X=0;Y=0;Z=0")
		(attr "<STEP Rotation>" "X=0;Y=0;Z=0")
	)

)
