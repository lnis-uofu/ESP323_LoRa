PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//4157548/983811/2.49/2/5/Capacitor

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r99_78"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.78) (shapeHeight 0.99))
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
	(patternDef "CAPC1608X90N" (originalName "CAPC1608X90N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r99_78) (pt -0.7, 0) (rotation 0))
			(pad (padNum 2) (padStyleRef r99_78) (pt 0.7, 0) (rotation 0))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.24 0.65) (pt 1.24 0.65) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.24 0.65) (pt 1.24 -0.65) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.24 -0.65) (pt -1.24 -0.65) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.24 -0.65) (pt -1.24 0.65) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.8 0.405) (pt 0.8 0.405) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.8 0.405) (pt 0.8 -0.405) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.8 -0.405) (pt -0.8 -0.405) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.8 -0.405) (pt -0.8 0.405) (width 0.025))
		)
	)
	(symbolDef "0603ZD106KAT2A" (originalName "0603ZD106KAT2A")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 0 mils -35 mils) (rotation 0]) (justify "UpperLeft") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 500 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 500 mils -35 mils) (rotation 0]) (justify "UpperRight") (textStyleRef "Normal"))
		))
		(line (pt 220 mils 100 mils) (pt 220 mils -100 mils) (width 6 mils))
		(line (pt 280 mils 100 mils) (pt 280 mils -100 mils) (width 6 mils))
		(line (pt 200 mils 0 mils) (pt 220 mils 0 mils) (width 6 mils))
		(line (pt 280 mils 0 mils) (pt 300 mils 0 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 350 mils 250 mils) (justify 24) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 350 mils 150 mils) (justify 24) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "0603ZD106KAT2A" (originalName "0603ZD106KAT2A") (compHeader (numPins 2) (numParts 1) (refDesPrefix C)
		)
		(compPin "1" (pinName "1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "2" (pinName "2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Unknown))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "0603ZD106KAT2A"))
		(attachedPattern (patternNum 1) (patternName "CAPC1608X90N")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Mouser Part Number" "581-0603ZD106KAT2A")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/AVX/0603ZD106KAT2A?qs=c1aAEamvUYHQhwHZOF6y0Q%3D%3D")
		(attr "Manufacturer_Name" "AVX")
		(attr "Manufacturer_Part_Number" "0603ZD106KAT2A")
		(attr "Description" "Multilayer Ceramic Capacitors MLCC - SMD/SMT 10V 10uF X5R 0603 10%TOL")
		(attr "<Hyperlink>" "https://componentsearchengine.com/Datasheets/1/06031A100FAT2A.pdf")
		(attr "<Component Height>" "0.9")
		(attr "<STEP Filename>" "0603ZD106KAT2A.stp")
		(attr "<STEP Offsets>" "X=0;Y=0;Z=0")
		(attr "<STEP Rotation>" "X=0;Y=0;Z=0")
	)

)
