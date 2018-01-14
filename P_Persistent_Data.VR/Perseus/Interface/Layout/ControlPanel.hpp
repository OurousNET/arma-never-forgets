


class ControlPanel
{
	idd = nullptr;
	movingEnable = true;
	onLoad = "_this spawn perseus_fnc_ui_initControlPanel;";
	onUnload = "uiNamespace setVariable ['perseus_val_ui_activeDisplay', displayNull];";
	
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
			text = "Perseus\Interface\Textures\Placeholder.paa";
			colorBackground[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			shadow = false;
			sizeEx = false;
		};
	};
	class Controls
	{
		class PlayerList : ListBox
		{
			idc = 100;
			x = "safezoneX + 0.15 * safezoneW";
			y = "safezoneY + 0.15 * safezoneH";
			w = "0.1 * safezoneW";
			h = "0.7 * safezoneH";
		};
		
		class MapView : Map
		{
			idc = 101;
			x = "safezoneX + (0.15+0.2) * safezoneW";
			y = "safezoneY + (0.15) * safezoneH";
			w = "0.5 * safezoneW";
			h = "0.6 * safezoneH";
			font = "PuristaMedium";
			colorBackground[] = {1,1,0,1};
			
		};
	};
};