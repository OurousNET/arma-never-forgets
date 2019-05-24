#define PLUS_OFFSET 110
#define TEXT_LEFT_OFFSET 0.003
#define MINUS_OFFSET 100
#define ADISP_OFFSET 120
#define ANAME_OFFSET 130
#define ATTR_MENU_Y_GAP 0.35
#define ATTR_MENU_Y_SPACING 0.05
#define ATTR_SETUP_Y(ARG) safezoneY+(ATTR_MENU_Y_GAP+ATTR_MENU_Y_SPACING*ARG)*safezoneH
#define ATTR_SETUP(ARG) class AttrPlus_##ARG##:PlusButton{idc=PLUS_OFFSET+ARG;y=ATTR_SETUP_Y(ARG);};\
class AttrMinus_##ARG##:MinusButton{idc=MINUS_OFFSET+ARG;y=ATTR_SETUP_Y(ARG);};\
class AttrDisp_##ARG##:AttrDisp{idc=ADISP_OFFSET+ARG;y=ATTR_SETUP_Y(ARG);};\
class AttrName_##ARG##:AttrName{idc=ANAME_OFFSET+ARG;y=ATTR_SETUP_Y(ARG);}

class AttrDisp : Text
{
	x = "safezoneX + 0.625 * safezoneW";
	w = 3 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
}

class AttrName : Text
{
	x = "safezoneX + 0.675 * safezoneW";
	w = 12 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	sizeEx = 0.06;
}

class PlusButton : ActiveText
{
	style = ST_PICTURE + ST_KEEP_ASPECT_RATIO;
	x = "safezoneX + 0.65 * safezoneW";
	w = 3 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	ANIM_BUTTON(PLUS);
	onButtonClick = "[(ctrlIDC (_this select 0)) % 10, 1] call perseus_fnc_ui_handleStatChange;";
}

class MinusButton : ActiveText
{
	style = ST_PICTURE + ST_KEEP_ASPECT_RATIO;
	x = "safezoneX + 0.6 * safezoneW";
	w = 3 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	ANIM_BUTTON(MINUS);
	onButtonClick = "[(ctrlIDC (_this select 0)) % 10, -1] call perseus_fnc_ui_handleStatChange;";
}

class CharacterSheet
{
	idd = nullptr;
	movingEnable = true;
	onLoad = "_this spawn perseus_fnc_ui_initCharacterSheet;";
	onUnload = "uiNamespace setVariable ['perseus_val_ui_activeDisplay', displayNull]; if!(perseus_val_currentPlayerAttributes isEqualTo perseus_val_originalPlayerAttributes) then {call perseus_fnc_ui_submitCharacterSheet;};";
	class ControlsBackground
	{
		class Background
		{
			moving = true;
			idc = nullptr;
			x = "safezoneX + 0.15 * safezoneW";
			y = "safezoneY + 0.15 * safezoneH";
			w = "0.7 * safezoneW";
			h = "0.7 * safezoneH";
			type = CT_STATIC;
			style = ST_PICTURE;
			text = "Perseus\Interface\Textures\CharacterSheet.paa";
			colorBackground[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			shadow = false;
			sizeEx = false;
		};
	};
	class Controls
	{
		ATTR_SETUP(0);
		ATTR_SETUP(1);
		ATTR_SETUP(2);
		ATTR_SETUP(3);
		ATTR_SETUP(4);
		
		class Attributes : Text
		{
			x = safezoneX + (0.625 + TEXT_LEFT_OFFSET) * safezoneW;
			y = safezoneY + (ATTR_MENU_Y_GAP - 0.125) * safezoneH;
			w = 14 * GUI_GRID_W;
			h = 4 * GUI_GRID_H;
			sizeEx = 0.08;
			text = "Attributes";
		};
		
		class Unspent : Text
		{
			idc = 140;
			style = ST_LEFT;
			x = safezoneX + (0.625 + TEXT_LEFT_OFFSET) * safezoneW;
			y = safezoneY + (ATTR_MENU_Y_GAP - ATTR_MENU_Y_SPACING) * safezoneH;
			w = 14 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		
		class Apply : ActiveText
		{
			style = ST_PICTURE;
			idc = 141;
			x = safezoneX + 0.6 * safezoneW;
			y = safezoneY + (ATTR_MENU_Y_GAP + ATTR_MENU_Y_SPACING * 6.25) * safezoneH;
			w = 8 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
			ANIM_BUTTON(APPLY);
			onButtonClick = "disableSerialization; _ctrl = _this select 0; _ctrl ctrlEnable false; _ctrl ctrlSetText 'Perseus\Interface\Textures\APPLY_DISABLED.paa'; perseus_val_currentPlayerAttributes = +perseus_val_possiblePlayerAttributes;";
		};
		
		class Reset : ActiveText
		{
			style = ST_PICTURE;
			idc = 142;
			x = safezoneX + 0.715 * safezoneW;
			y = safezoneY + (ATTR_MENU_Y_GAP + ATTR_MENU_Y_SPACING * 6.25) * safezoneH;
			w = 8 * GUI_GRID_W;
			h = 3 * GUI_GRID_H;
			ANIM_BUTTON(RESET);
			onButtonClick = "perseus_val_currentPlayerAttributes = +perseus_val_originalPlayerAttributes; call perseus_fnc_ui_resetCharacterSheet";
		};
	};
};
