class DogTag
{
	idd = nullptr;
	movingEnable = true;
	onLoad = "_this spawn perseus_fnc_ui_initDogTag;";
	onUnload = "uiNamespace setVariable ['perseus_val_ui_activeDisplay', displayNull];";
	
	class ControlsBackground
	{
		class Background
		{
			moving = true;
			idc = nullptr;
			x = "safezoneX + 0.15 * safezoneW";
			y = "safezoneY + 0.15 * safezoneH";
			w = "0.1 * safezoneW";
			h = "0.1 * safezoneH";
			type = CT_STATIC;
			style = ST_PICTURE;
			text = "Perseus\Interface\Textures\DogtagWindow.paa";
			colorBackground[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			shadow = false;
			sizeEx = false;
		};
	};
	class Controls
	{
		class EmbossedText : Text
		{
			idc = 100;
			x=1;
			y=1;
			w=1;
			h=1;
		};
	};
};