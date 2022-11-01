SamacSys ECAD Model
5097236/983811/2.49/3/2/MOSFET N-Channel

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r300_160"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.600) (shapeHeight 3.000))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "s600"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 6.000) (shapeHeight 6.000))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Default"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50 mils)
			(strokeWidth 5 mils)
		)
	)
	(patternDef "TK13P25DRQ" (originalName "TK13P25DRQ")
		(multiLayer
			(pad (padNum 1) (padStyleRef r300_160) (pt -2.300, -4.080) (rotation 0))
			(pad (padNum 2) (padStyleRef s600) (pt 0.000, 2.420) (rotation 90))
			(pad (padNum 3) (padStyleRef r300_160) (pt 2.300, -4.080) (rotation 0))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0.000, -0.080) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.05 -2.52) (pt 3.05 -2.52) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt 3.05 -2.52) (pt 3.05 4.08) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt 3.05 4.08) (pt -3.05 4.08) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.05 4.08) (pt -3.05 -2.52) (width 0.2))
		)
		(layerContents (layerNumRef 30)
			(line (pt -4.1 6.42) (pt 4.1 6.42) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 4.1 6.42) (pt 4.1 -6.58) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 4.1 -6.58) (pt -4.1 -6.58) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt -4.1 -6.58) (pt -4.1 6.42) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1 -2.52) (pt 1 -2.52) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 1 -2.52) (pt 1 -2.52) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 1 -2.52) (pt -1 -2.52) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1 -2.52) (pt -1 -2.52) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.05 -1.2) (pt -3.05 -1.2) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.05 -1.2) (pt -3.05 -2) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.05 -2) (pt -3.05 -2) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.05 -2) (pt -3.05 -1.2) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 3.05 -2) (pt 3.05 -2) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 3.05 -2) (pt 3.05 -1) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 3.05 -1) (pt 3.05 -1) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 3.05 -1) (pt 3.05 -2) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.4 -6.2) (pt -2.4 -6.2) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -2.35, -6.2) (radius 0.05) (startAngle 180.0) (sweepAngle 180.0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.3 -6.2) (pt -2.3 -6.2) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -2.35, -6.2) (radius 0.05) (startAngle .0) (sweepAngle 180.0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.4 -6.2) (pt -2.4 -6.2) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -2.35, -6.2) (radius 0.05) (startAngle 180.0) (sweepAngle 180.0) (width 0.2))
		)
	)
	(symbolDef "TK13P25D_RQ" (originalName "TK13P25D_RQ")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 100 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 0 mils -45 mils) (rotation 0]) (justify "UpperLeft") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 300 mils 400 mils) (rotation 270) (pinLength 100 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 305 mils 400 mils) (rotation 90]) (justify "UpperLeft") (textStyleRef "Default"))
		))
		(pin (pinNum 3) (pt 300 mils -200 mils) (rotation 90) (pinLength 100 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 305 mils -200 mils) (rotation 90]) (justify "LowerLeft") (textStyleRef "Default"))
		))
		(line (pt 300 mils 100 mils) (pt 300 mils -100 mils) (width 6 mils))
		(line (pt 300 mils 200 mils) (pt 300 mils 300 mils) (width 6 mils))
		(line (pt 100 mils 0 mils) (pt 200 mils 0 mils) (width 6 mils))
		(line (pt 200 mils 0 mils) (pt 200 mils 200 mils) (width 6 mils))
		(line (pt 300 mils 100 mils) (pt 230 mils 100 mils) (width 6 mils))
		(line (pt 300 mils 200 mils) (pt 230 mils 200 mils) (width 6 mils))
		(line (pt 230 mils 0 mils) (pt 300 mils 0 mils) (width 6 mils))
		(line (pt 230 mils 220 mils) (pt 230 mils 180 mils) (width 6 mils))
		(line (pt 230 mils -20 mils) (pt 230 mils 20 mils) (width 6 mils))
		(line (pt 230 mils 80 mils) (pt 230 mils 120 mils) (width 6 mils))
		(arc (pt 250 mils 100 mils) (radius 150 mils) (startAngle 0) (sweepAngle 360) (width 10  mils))
		(poly (pt 230 mils 100 mils) (pt 270 mils 120 mils) (pt 270 mils 80 mils) (pt 230 mils 100 mils) (width 10  mils))
		(attr "RefDes" "RefDes" (pt 450 mils 150 mils) (justify Left) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "TK13P25D,RQ" (originalName "TK13P25D,RQ") (compHeader (numPins 3) (numParts 1) (refDesPrefix Q)
		)
		(compPin "1" (pinName "G") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "D") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "3" (pinName "S") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "TK13P25D_RQ"))
		(attachedPattern (patternNum 1) (patternName "TK13P25DRQ")
			(numPads 3)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
			)
		)
		(attr "Mouser Part Number" "757-TK13P25DRQ")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Toshiba/TK13P25DRQ/?qs=B6kkDfuK7%2FAQ0ksZyBxdyg%3D%3D")
		(attr "Manufacturer_Name" "Toshiba")
		(attr "Manufacturer_Part_Number" "TK13P25D,RQ")
		(attr "Description" "Pb-F POWER MOSFET TRANSISTOR DPAK-OS PD=96W F=1MHZ")
		(attr "Datasheet Link" "https://toshiba.semicon-storage.com/ap-en/semiconductor/design-development/package/detail.DPAK.html")
		(attr "Height" "2.4 mm")
	)

)