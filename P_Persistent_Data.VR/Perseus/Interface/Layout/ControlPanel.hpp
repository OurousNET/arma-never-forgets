#define INFO_OFFSET 100
#define BUTTON_OFFSET 200
#define WINDOW_WIDTH_RATIO 0.8
#define WINDOW_HEIGHT_RATIO 0.8
#define GET_X_FROM_OFFSET(OFFSET) safezoneX+((1-WINDOW_WIDTH_RATIO)/2+((OFFSET/100)*WINDOW_WIDTH_RATIO))*safezoneW
#define GET_Y_FROM_OFFSET(OFFSET) safezoneY+((1-WINDOW_HEIGHT_RATIO)/2+((OFFSET/100)*WINDOW_HEIGHT_RATIO))*safezoneH
#define GET_W_FROM_PERCENT(PERCENT) ((PERCENT/100)*WINDOW_WIDTH_RATIO)*safezoneW
#define GET_H_FROM_PERCENT(PERCENT) ((PERCENT/100)*WINDOW_HEIGHT_RATIO)*safezoneH


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
			//x = "safezoneX + 0.15 * safezoneW";
			//y = "safezoneY + 0.15 * safezoneH";
			x = GET_X_FROM_OFFSET(0);
			y = GET_Y_FROM_OFFSET(0);
			//w = "0.7 * safezoneW";
			//h = "0.7 * safezoneH";
			w = GET_W_FROM_PERCENT(100);
			h = GET_H_FROM_PERCENT(100);
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
			//x = "safezoneX + 0.15 * safezoneW";
			//y = "safezoneY + 0.15 * safezoneH";
			x = GET_X_FROM_OFFSET(0);
			y = GET_Y_FROM_OFFSET(0);
			//w = "0.1 * safezoneW";
			//h = "0.7 * safezoneH";
			w = GET_W_FROM_PERCENT(15);
			h = GET_H_FROM_PERCENT(100);
		};
		
		class MapView : Map
		{
			idc = 101;
			//x = "safezoneX + (0.15+0.2) * safezoneW";
			//y = "safezoneY + (0.15) * safezoneH";
			x = GET_X_FROM_OFFSET(30);
			y = GET_Y_FROM_OFFSET(0);
			//w = "0.5 * safezoneW";
			//h = "0.6 * safezoneH";
			w = GET_W_FROM_PERCENT(70);
			h = GET_H_FROM_PERCENT(75);
			font = "PuristaMedium";
			colorBackground[] = {1,1,0,1};
			
		};
		
		class GMReadyOrNot : Button
		{
			idc = BUTTON_OFFSET + 0;
			x = GET_X_FROM_OFFSET(17.5);
			y = GET_Y_FROM_OFFSET(5);
			w = GET_W_FROM_PERCENT(10);
			h = GET_H_FROM_PERCENT(10);
			text = "GM READY BUTTON";
		};
		
		class DriverCert : Button
		{
			idc = BUTTON_OFFSET + 1;
			x = GET_X_FROM_OFFSET(17.5);
			y = GET_Y_FROM_OFFSET(17.5);
			w = GET_W_FROM_PERCENT(10);
			h = GET_H_FROM_PERCENT(10);
			text = "DRIVER CERT";
		};
		
		class GunnerCommanderCert : Button
		{
			idc = BUTTON_OFFSET + 2;
			x = GET_X_FROM_OFFSET(17.5);
			y = GET_Y_FROM_OFFSET(30);
			w = GET_W_FROM_PERCENT(10);
			h = GET_H_FROM_PERCENT(10);
			text = "GUN/COM CERT";
		};
		
		class RotartWingPilotCert : Button
		{
			idc = BUTTON_OFFSET + 3;
			x = GET_X_FROM_OFFSET(17.5);
			y = GET_Y_FROM_OFFSET(42.5);
			w = GET_W_FROM_PERCENT(10);
			h = GET_H_FROM_PERCENT(10);
			text = "RW PILOT CERT";
		};
		
		class FixedWingPilotCert : Button
		{
			idc = BUTTON_OFFSET + 4;
			x = GET_X_FROM_OFFSET(17.5);
			y = GET_Y_FROM_OFFSET(55);
			w = GET_W_FROM_PERCENT(10);
			h = GET_H_FROM_PERCENT(10);
			text = "FW PILOT CERT";
		};
		
		class CASCert : Button
		{
			idc = BUTTON_OFFSET + 5;
			x = GET_X_FROM_OFFSET(17.5);
			y = GET_Y_FROM_OFFSET(67.5);
			w = GET_W_FROM_PERCENT(10);
			h = GET_H_FROM_PERCENT(10);
			text = "CAS CERT";
		};
		
		class KickButton : Button
		{
			idc = BUTTON_OFFSET + 6;
			x = GET_X_FROM_OFFSET(17.5);
			y = GET_Y_FROM_OFFSET(85);
			w = GET_W_FROM_PERCENT(10);
			h = GET_H_FROM_PERCENT(10);
			text = "KICK BUTTON";
		};
		
		class BanButton : Button
		{
			idc = BUTTON_OFFSET + 7;
			x = GET_X_FROM_OFFSET(30);
			y = GET_Y_FROM_OFFSET(85);
			w = GET_W_FROM_PERCENT(10);
			h = GET_H_FROM_PERCENT(10);
			text = "BAN BUTTON";
		};
		
		class MakeAdminButton : Button
		{
			idc = BUTTON_OFFSET + 8;
			x = GET_X_FROM_OFFSET(85);
			y = GET_Y_FROM_OFFSET(85);
			w = GET_W_FROM_PERCENT(10);
			h = GET_H_FROM_PERCENT(10);
			text = "MAKE ADMIN";
		};
		
		class MakeVIPButton : Button
		{
			idc = BUTTON_OFFSET + 9;
			x = GET_X_FROM_OFFSET(72.5);
			y = GET_Y_FROM_OFFSET(85);
			w = GET_W_FROM_PERCENT(10);
			h = GET_H_FROM_PERCENT(10);
			text = "MAKE ADMIN";
		};
		
		class MakeGMButton : Button
		{
			idc = BUTTON_OFFSET + 10;
			x = GET_X_FROM_OFFSET(60);
			y = GET_Y_FROM_OFFSET(85);
			w = GET_W_FROM_PERCENT(10);
			h = GET_H_FROM_PERCENT(10);
			text = "MAKE GM";
		};
		
		class WipePlayerData : Button
		{
			idc = BUTTON_OFFSET + 11;
			x = GET_X_FROM_OFFSET(47.5);
			y = GET_Y_FROM_OFFSET(85);
			w = GET_W_FROM_PERCENT(10);
			h = GET_H_FROM_PERCENT(10);
			text = "WIPE PLAYER DATA";
		};
	};
};