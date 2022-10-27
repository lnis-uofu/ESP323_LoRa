SamacSys ECAD Model
769361/983811/2.49/13/0/Connector

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r150_80"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.800) (shapeHeight 1.500))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "r140_130"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.300) (shapeHeight 1.400))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "r100_95"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.950) (shapeHeight 1.000))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "r190_140"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.400) (shapeHeight 1.900))
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
	(patternDef "MEM20510019500A" (originalName "MEM20510019500A")
		(multiLayer
			(pad (padNum 1) (padStyleRef r150_80) (pt 1.915, -3.661) (rotation 0))
			(pad (padNum 2) (padStyleRef r150_80) (pt 0.815, -3.261) (rotation 0))
			(pad (padNum 3) (padStyleRef r150_80) (pt -0.285, -3.661) (rotation 0))
			(pad (padNum 4) (padStyleRef r150_80) (pt -1.385, -3.861) (rotation 0))
			(pad (padNum 5) (padStyleRef r150_80) (pt -2.485, -3.661) (rotation 0))
			(pad (padNum 6) (padStyleRef r150_80) (pt -3.585, -3.861) (rotation 0))
			(pad (padNum 7) (padStyleRef r150_80) (pt -4.685, -3.661) (rotation 0))
			(pad (padNum 8) (padStyleRef r150_80) (pt -5.785, -3.661) (rotation 0))
			(pad (padNum 9) (padStyleRef r140_130) (pt -4.975, 7.199) (rotation 0))
			(pad (padNum 10) (padStyleRef r100_95) (pt -3.585, 7.425) (rotation 90))
			(pad (padNum 11) (padStyleRef r140_130) (pt 0.725, 7.199) (rotation 0))
			(pad (padNum 12) (padStyleRef r190_140) (pt -6.575, -5.950) (rotation 0))
			(pad (padNum 13) (padStyleRef r190_140) (pt 6.575, -6.950) (rotation 0))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0.000, 0.000) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 28)
			(line (pt -7 7.837) (pt 7 7.837) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 7 7.837) (pt 7 -7.362) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 7 -7.362) (pt -7 -7.362) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -7 -7.362) (pt -7 7.837) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt -8.275 8.899) (pt 8.275 8.899) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 8.275 8.899) (pt 8.275 -8.899) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 8.275 -8.899) (pt -8.275 -8.899) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt -8.275 -8.899) (pt -8.275 8.899) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -7 -7.362) (pt 5 -7.362) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 7 -5.263) (pt 7 7.837) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 7 7.837) (pt 2 7.837) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -6.5 7.837) (pt -7 7.837) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -7 7.837) (pt -7 -4.263) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.5 7.837) (pt -0.5 7.837) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 7.6 -3.661) (pt 7.6 -3.661) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 7.7, -3.6605) (radius 0.1) (startAngle 180.0) (sweepAngle 180.0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 7.8 -3.661) (pt 7.8 -3.661) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 7.7, -3.6605) (radius 0.1) (startAngle .0) (sweepAngle 180.0) (width 0.2))
		)
	)
	(symbolDef "MEM2051-00-195-00-A" (originalName "MEM2051-00-195-00-A")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 3) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -225 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 4) (pt 0 mils -300 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -325 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 5) (pt 0 mils -400 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -425 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 6) (pt 0 mils -500 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -525 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 7) (pt 0 mils -600 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -625 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 8) (pt 1300 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 9) (pt 1300 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -125 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 10) (pt 1300 mils -200 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -225 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 11) (pt 1300 mils -300 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -325 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 12) (pt 1300 mils -400 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -425 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 13) (pt 1300 mils -500 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -525 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(line (pt 200 mils 100 mils) (pt 1100 mils 100 mils) (width 6 mils))
		(line (pt 1100 mils 100 mils) (pt 1100 mils -700 mils) (width 6 mils))
		(line (pt 1100 mils -700 mils) (pt 200 mils -700 mils) (width 6 mils))
		(line (pt 200 mils -700 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 1150 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "MEM2051-00-195-00-A" (originalName "MEM2051-00-195-00-A") (compHeader (numPins 13) (numParts 1) (refDesPrefix J)
		)
		(compPin "P1" (pinName "DAT2") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "P2" (pinName "CD/DAT3") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "P3" (pinName "CMD") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "P4" (pinName "VDD") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "P5" (pinName "CLK") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "P6" (pinName "VSS") (partNum 1) (symPinNum 6) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "P7" (pinName "DAT0") (partNum 1) (symPinNum 7) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "P8" (pinName "DAT1") (partNum 1) (symPinNum 8) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "MP1" (pinName "MP1") (partNum 1) (symPinNum 9) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "MP2" (pinName "MP2") (partNum 1) (symPinNum 10) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "MP3" (pinName "MP3") (partNum 1) (symPinNum 11) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "MP4" (pinName "MP4") (partNum 1) (symPinNum 12) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "MP5" (pinName "MP5") (partNum 1) (symPinNum 13) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "MEM2051-00-195-00-A"))
		(attachedPattern (patternNum 1) (patternName "MEM20510019500A")
			(numPads 13)
			(padPinMap
				(padNum 1) (compPinRef "P1")
				(padNum 2) (compPinRef "P2")
				(padNum 3) (compPinRef "P3")
				(padNum 4) (compPinRef "P4")
				(padNum 5) (compPinRef "P5")
				(padNum 6) (compPinRef "P6")
				(padNum 7) (compPinRef "P7")
				(padNum 8) (compPinRef "P8")
				(padNum 9) (compPinRef "MP1")
				(padNum 10) (compPinRef "MP2")
				(padNum 11) (compPinRef "MP3")
				(padNum 12) (compPinRef "MP4")
				(padNum 13) (compPinRef "MP5")
			)
		)
		(attr "Mouser Part Number" "640-MEM20510019500A")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/GCT/MEM2051-00-195-00-A?qs=KUoIvG%2F9Ilat7yfJRNWXUQ%3D%3D")
		(attr "Manufacturer_Name" "GCT (GLOBAL CONNECTOR TECHNOLOGY)")
		(attr "Manufacturer_Part_Number" "MEM2051-00-195-00-A")
		(attr "Description" "MICRO SD PUSH PUSH, OPEN, SMT, 1")
		(attr "Datasheet Link" "https://gct.co/files/drawings/mem2051.pdf")
		(attr "Height" "2.05 mm")
	)

)
