class Text
{
	idc = nullptr;
	access = false;
	type = CT_STATIC;
	style = ST_CENTER;
	color[] = {1,1,1,1};
	colorText[] = {1,1,1,1};
	colorBackground[] = {1,1,1,0};
	font = "PuristaMedium";
	sizeEx = GUI_TEXT_SIZE_HEAVY;
	shadow = 2;
	text = "";
}

class ActiveText
{
	idc = nullptr;
	access = false;
	type = CT_ACTIVETEXT;
	style = ST_CENTER;
	color[] = RGB_ARR_White;
	colorActive[] = RGB_ARR_White;
	colorDisabled[] = RGB_ARR_White;
	offsetPressedX = false;
	offsetPressedY = false;
	offsetX = false;
	offsetY = false;
	soundEnter[] = {"",0.1,1};
	soundPush[] = {"",0.1,1};
	soundClick[] = {"",0.1,1};
	soundEscape[] = {"",0.1,1};
	font = "PuristaMedium";
	sizeEx = false;
	borderSize = false;
	text = "";
}
class Button
{
	idc = nullptr;
	access = false;
	type = CT_BUTTON;
	style = ST_CENTER;
	text = "";
	font = GUI_FONT_NORMAL;
	sizeEx = GUI_TEXT_SIZE_NORMAL;
	colorText[] = RGB_ARR_White;
	colorDisabled[] = RGB_ARR_White;
	colorBackground[] = RGB_ARR_Black;
	colorBackgroundDisabled[] = RGB_ARR_None;
	colorBackgroundActive[] = RGB_ARR_None;
	offsetX = 0.004;
	offsetY = 0.004;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	colorFocused[] = RGB_ARR_White;
	colorShadow[] = RGB_ARR_Black;
	shadow = false;
	colorBorder[] = RGB_ARR_Zero;
	borderSize = false;
	soundEnter[] = {"",0.1,1};
	soundPush[] = {"",0.1,1};
	soundClick[] = {"",0.1,1};
	soundEscape[] = {"",0.1,1};
};

class ListBox
{
	idc = nullptr;
	access = true;
	type = CT_LISTBOX;
	style = ST_MULTI;
	w = 0.4;
	h = 0.4;
	font = GUI_FONT_NORMAL;
	sizeEx = GUI_TEXT_SIZE_NORMAL;
	rowHeight = 0;
	colorText[] = RGB_ARR_White;
	colorScrollbar[] = RGB_ARR_White;
	colorSelect[] = {0,0,0,1};
	colorSelect2[] = {1,0.5,0,1};
	colorSelectBackground[] = {0.6,0.6,0.6,1};
	colorSelectBackground2[] = {0.2,0.2,0.2,1};
	colorBackground[] = {0,0,0,1};
	color[] = RGB_ARR_White;
	colorActive[] = RGB_ARR_White;
	colorDisabled[] = RGB_ARR_White;
	maxHistoryDelay = 1.0;
	soundSelect[] = {"",0.1,1};
	period = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	shadow = 0;
 
	class ListScrollBar //ListScrollBar is class name required for Arma 3
	{
		type = CT_XSLIDER;
		vspacing = 0;
		color[] = {1,1,1,0.6};
		colorActive[] = RGB_ARR_White;
		colorDisabled[] = {1,1,1,0.3};
		thumb = "#(argb,8,8,3)color(1,1,1,1)";
		arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
		arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
		border = "#(argb,8,8,3)color(1,1,1,1)";
		shadow = 0;
	};
}; 

class Map
{
	access = false;
	idc = null;
	type = CT_MAP_MAIN;
	style = ST_PICTURE;

	x = 0.10;
	y = 0.10;
	w = 0.80;
	h = 0.60;
	
	// borrowed this next part from somewhere, was incomplete
	
	colorBackground[] = {0.969,0.957,0.949,1.000};
    colorOutside[] = RGB_ARR_Black;
    colorSea[] = {0.467,0.631,0.851,0.500};
    colorForest[] = {0.624,0.780,0.388,0.500};
    colorForestBorder[] = RGB_ARR_Zero;
    colorRocks[] = {0.000,0.000,0.000,0.300}; 
    colorRocksBorder[] = RGB_ARR_Zero;
    colorLevels[] = {0.286,0.177,0.094,0.500};
    colorMainCountlines[] = {0.572,0.354,0.188,0.500};
    colorCountlines[] = {0.572,0.354,0.188,0.250};
    colorMainCountlinesWater[] = {0.491,0.577,0.702,0.600};
    colorCountlinesWater[] = {0.491,0.577,0.702,0.300};
    colorPowerLines[] = {0.100,0.100,0.100,1.000};
    colorRailWay[] = {0.800,0.200,0.000,1.000};
    colorNames[] = {0.100,0.100,0.100,0.900};
    colorInactive[] = {1.000,1.000,1.000,0.500};
    colorTracks[] = {0.840,0.760,0.650,0.150};
    colorTracksFill[] = {0.840,0.760,0.650,1.000};
    colorRoads[] = {0.700,0.700,0.700,1.000};
    colorRoadsFill[] = RGB_ARR_White;
    colorMainRoads[] = {0.900,0.500,0.300,1.000};
    colorMainRoadsFill[] = {1.000,0.600,0.400,1.000};
    colorGrid[] = {0.100,0.100,0.100,0.600};
	colorGridMap[] = {0.100,0.100,0.100,0.600};


	
	colorText[] = RGB_ARR_Black;
	font = "TahomaB";
	sizeEx = 0.040000;

	fontLabel = "TahomaB";
	sizeExLabel = 0.02;
	fontGrid = "TahomaB";
	sizeExGrid = 0.02;
	fontUnits = "TahomaB";
	sizeExUnits = 0.02;
	fontNames = "TahomaB";
	sizeExNames = 0.02;
	fontInfo = "TahomaB";
	sizeExInfo = 0.02;
	fontLevel = "TahomaB";
	sizeExLevel = 0.02;

	stickX[] = {0.20, {"Gamma", 1.00, 1.50} };
	stickY[] = {0.20, {"Gamma", 1.00, 1.50} };
	moveOnEdges = true;
    ptsPerSquareSea = 5;
    ptsPerSquareTxt = 20;
    ptsPerSquareCLn = 10;
    ptsPerSquareExp = 10;
    ptsPerSquareCost = 10;
    ptsPerSquareFor = 9;
    ptsPerSquareForEdge = 9;
    ptsPerSquareRoad = 6;
    ptsPerSquareObj = 9;
    scaleMin = 0.0001;
    scaleMax = 1.0;
    scaleDefault = 0.16;
    

	//text = "\A3\ui_f\data\map\mapControl\background2_co.paa";
	text = "";
	showCountourInterval=2;
	
	//events that can be used
	//onLoad = "";
	//onUnload = "";
	onCanDestroy = "";
    onDestroy = "";
    onSetFocus = "";
    onKillFocus = "";
    onKeyDown = "";
    onKeyUp = "";
    onMouseButtonDown = "";
    onMouseButtonUp = "";
    onMouseButtonClick = "";
    onMouseButtonDblClick = "";
    onMouseZChanged = "";
    onMouseMoving = "";
    onMouseHolding = "";
	onDraw = "";
	
	//added these, no idea what they do
	maxSatelliteAlpha = 0.85;
    alphaFadeStartScale = 2;
	alphaFadeEndScale = 2;
	
	idcMarkerColor = nullptr;
    idcMarkerIcon = nullptr;
    textureComboBoxColor = RGB_TEX_None;
	showMarkers = true;

	//might need to use this one later
	
	class Legend {
        x = 0;
        y = 0;
        w = 0;
        h = 0;
        color[] = {0,0,0,0};
        colorBackground[] = {0,0,0,0};
        font = GUI_FONT_NORMAL;
        sizeEx = 0.00;
	};
	
	
	//define the base types we need to use for the map control-control-subcontrols

	class Task {
        icon = "\A3\ui_f\data\map\mapControl\taskIcon_CA.paa";
        color[] = RGB_ARR_White;
        iconCreated = "\A3\ui_f\data\map\mapControl\taskIconCreated_CA.paa";
        colorCreated[] = {1,1,0,1};
        iconCanceled = "\A3\ui_f\data\map\mapControl\taskIconCanceled_CA.paa";
        colorCanceled[] = {0.7,0.7,0.7,1};
        iconDone = "\A3\ui_f\data\map\mapControl\taskIconDone_CA.paa";
        colorDone[] = {0.7,1,0.3,1};
        iconFailed = "\A3\ui_f\data\map\mapControl\taskIconFailed_CA.paa";
        colorFailed[] = {1,0.3,0.2,1};
        size = 27;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
	};
	class Command {
		icon = "#(argb,8,8,3)color(1,1,1,1)";
		color[] = {0.00, 0.00, 0.00, 1.00};
		size = 18;
		importance = 1.00;
		coefMin = 1.00;
		coefMax = 1.00;
	};

	// class Environment (trees, rocks, etc...)
	// class Structures (fortresses, etc..)
	// class Logistics (waypoints, etc..)
	
	
	
	
	//strange things that don't really fit anywhere
	
	class ActiveMarker {
		color[] = {0.30, 0.10, 0.90, 1.00};
		size = 2;
	};
	class CustomMark {
		icon = "\A3\ui_f\data\map\mapControl\custommark_ca.paa";
		color[] = RGB_ARR_Black;
		size = 24;
		importance = 1.00;
		coefMin = 1.00;
		coefMax = 1.00;
	};
	class LineMarker {
        lineDistanceMin = 3e-005;
        lineLengthMin = 5;
        lineWidthThick = 0.014;
        lineWidthThin = 0.008;
        textureComboBoxColor = RGB_TEX_White;
	};
	
	// the rest of the things
	
	class Bunker {
		icon = "\A3\ui_f\data\map\mapControl\bunker_ca.paa";
		color[] = {0.00, 0.35, 0.70, 1.00};
		size = 14;
		importance = "1.5 * 14 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Bush {
		icon = "\A3\ui_f\data\map\mapControl\bush_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1.00};
		size = 14;
		importance = "0.2 * 14 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class BusStop {
		icon = "\A3\ui_f\data\map\mapControl\busstop_ca.paa";
		color[] = {0.00, 0.00, 1.00, 1.00};
		size = 10;
		importance = "1 * 10 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Cross {
		icon = "\A3\ui_f\data\map\mapControl\cross_ca.paa";
		color[] = {0.00, 0.35, 0.70, 1.00};
		size = 16;
		importance = "0.7 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Fortress {
		icon = "\A3\ui_f\data\map\mapControl\bunker_ca.paa";
		color[] = {0.00, 0.35, 0.70, 1.00};
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Fuelstation {
		icon = "\A3\ui_f\data\map\mapControl\fuelstation_ca.paa";
		color[] = {1.00, 0.35, 0.35, 1.00};
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.75;
		coefMax = 4.00;
	};
	class Fountain {
		icon = "\A3\ui_f\data\map\mapControl\fountain_ca.paa";
		color[] = {0.00, 0.35, 0.70, 1.00};
		size = 12;
		importance = "1 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Hospital {
		icon = "\A3\ui_f\data\map\mapControl\hospital_ca.paa";
		color[] = {0.78, 0.00, 0.05, 1.00};
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.50;
		coefMax = 4;
	};
	class Chapel {
		icon = "\A3\ui_f\data\map\mapControl\chapel_ca.paa";
		color[] = {0.00, 0.35, 0.70, 1.00};
		size = 16;
		importance = "1 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Church {
		icon = "\A3\ui_f\data\map\mapControl\church_ca.paa";
		color[] = {0.00, 0.35, 0.70, 1.00};
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Lighthouse {
		icon = "\A3\ui_f\data\map\mapControl\lighthouse_ca.paa";
		color[] = {0.78, 0.00, 0.05, 1.00};
		size = 20;
		importance = "3 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Power {
		icon = "\A3\ui_f\data\map\mapControl\power_ca.paa";
		color[] = RGB_ARR_White;
		size = 24;
		coefMin = 0.85;
		coefMax = 1.00;
		importance = 1;
	};
	class PowerSolar : Power {
		icon = "\A3\ui_f\data\map\mapControl\powersolar_ca.paa"
	};
	class PowerWind : Power {
		icon = "\A3\ui_f\data\map\mapControl\powerwind_ca.paa"
	};
	class PowerWave : Power {
		icon = "\A3\ui_f\data\map\mapControl\powerwave_ca.paa"
	};
	class Quay {
		icon = "\A3\ui_f\data\map\mapControl\quay_ca.paa";
		color[] = {0.00, 0.35, 0.70, 1.00};
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.50;
		coefMax = 4.00;
	};
	class Rock {
		icon = "\A3\ui_f\data\map\mapControl\rock_ca.paa";
		color[] = {0.35, 0.35, 0.35, 1.00};
		size = 12;
		importance = "0.5 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Ruin {
		icon = "\A3\ui_f\data\map\mapControl\ruin_ca.paa";
		color[] = {0.78, 0.00, 0.05, 1.00};
		size = 16;
		importance = "1.2 * 16 * 0.05";
		coefMin = 1.00;
		coefMax = 4.00;
	};
	class ShipWreck {
		icon = "\A3\ui_f\data\map\mapControl\shipWreck_ca.paa";
		color[] = RGB_ARR_Black;
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
	class Stack {
		icon = "\A3\ui_f\data\map\mapControl\stack_ca.paa";
		color[] = {0.00, 0.35, 0.70, 1.00};
		size = 20;
		importance = "2 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Tree {
		icon = "\A3\ui_f\data\map\mapControl\tree_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1.00};
		size = 12;
		importance = "0.9 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class SmallTree {
		icon = "\A3\ui_f\data\map\mapControl\smalltree_ca.paa";
		color[] = {0.55, 0.64, 0.43, 1.00};
		size = 12;
		importance = "0.6 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4.00;
	};
	class Tourism {
		icon = "\A3\ui_f\data\map\mapControl\tourism_ca.paa";
		color[] = {0.78, 0.00, 0.05, 1.00};
		size = 16;
		importance = "1 * 16 * 0.05";
		coefMin = 0.70;
		coefMax = 4.00;
	};
	class Transmitter {
		icon = "\A3\ui_f\data\map\mapControl\transmitter_ca.paa";
		color[] = {0.00, 0.35, 0.70, 1.00};
		size = 20;
		importance = "2 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class ViewTower {
		icon = "\A3\ui_f\data\map\mapControl\viewtower_ca.paa";
		color[] = {0.00, 0.35, 0.70, 1.00};
		size = 16;
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.50;
		coefMax = 4.00;
	};
	class Watertower {
		icon = "\A3\ui_f\data\map\mapControl\watertower_ca.paa";
		color[] = {0.00, 0.35, 0.70, 1.00};
		size = 32;
		importance = "1.2 * 16 * 0.05";
		coefMin = 0.90;
		coefMax = 4.00;
	};
	class Waypoint {
		icon = "\A3\ui_f\data\map\mapControl\waypoint_ca.paa";
		color[] = RGB_ARR_Black;
		size = 24;
		importance = 1.00;
		coefMin = 1.00;
		coefMax = 1.00;
	};
	class WaypointCompleted : Waypoint {
		icon = "\A3\ui_f\data\map\mapControl\waypointcompleted_ca.paa";
	};
};