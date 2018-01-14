	class Perseus
	{
		class Interface
		{
			class UI_initCharacterSheet		{
											file = "Perseus\Interface\Logic\UI_initCharacterSheet.sqf";  //Location of Function
											preStart = 0; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class UI_genericKeyHandler		{
											file = "Perseus\Interface\Logic\UI_genericKeyHandler.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class UI_getIdFromElement		{
											file = "Perseus\Interface\Logic\UI_getIdFromElement.sqf";  //Location of Function
											preStart = 0; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class UI_handleStatChange		{
											file = "Perseus\Interface\Logic\UI_handleStatChange.sqf";  //Location of Function
											preStart = 0; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class UI_checkAreaIntersect		{
											file = "Perseus\Interface\Logic\UI_checkAreaIntersect.sqf";  //Location of Function
											preStart = 0; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class UI_resetCharacterSheet	{
											file = "Perseus\Interface\Logic\UI_resetCharacterSheet.sqf";  //Location of Function
											preStart = 0; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class UI_submitCharacterSheet	{
											file = "Perseus\Interface\Logic\UI_submitCharacterSheet.sqf";  //Location of Function
											preStart = 0; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class UI_initDogTag				{
											file = "Perseus\Interface\Logic\UI_initDogTag.sqf";  //Location of Function
											preStart = 0; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class UI_initControlPanel		{
											file = "Perseus\Interface\Logic\UI_initControlPanel.sqf";  //Location of Function
											preStart = 0; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class UI_refreshPlayerList		{
											file = "Perseus\Interface\Logic\UI_refreshPlayerList.sqf";  //Location of Function
											preStart = 0; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class UI_animateMapRefocus		{
											file = "Perseus\Interface\Logic\UI_animateMapRefocus.sqf";  //Location of Function
											preStart = 0; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class UI_asyncMapListener		{
											file = "Perseus\Interface\Logic\UI_asyncMapListener.sqf";  //Location of Function
											preStart = 0; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
		};
		class extdb2
		{
			class ExtDB2_init 			{
										file = "Perseus\Functions\fn_ExtDB2_init.sqf";  //Location of Function
										preInit = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
										recompile = 1; //1 to recompile the function upon mission start
										ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
										headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
										};			
			class ExtDB2_async 			{
										file = "Perseus\Functions\fn_ExtDB2_async.sqf";  //Location of Function
										preInit = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
										recompile = 1; //1 to recompile the function upon mission start
										ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
										headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
										};
		};
		class Cargo
		{
			class AmmoCargoLoad 			{
											file = "Perseus\Functions\fn_AmmoCargoLoad.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};	
			class WeaponCargoLoad			{
											file = "Perseus\Functions\fn_WeaponCargoLoad.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};	
			class ItemCargoLoad				{
											file = "Perseus\Functions\fn_ItemCargoLoad.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};	
			class BkPkCargoLoad				{
											file = "Perseus\Functions\fn_BkPkCargoLoad.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
		};		
		class Player
		{
			class Server_SendPlayer_PD	 	{ //This Function will check if the player has a database entry and then send data to all the Server_SendPlayer functions, executed via initplayerserver.sqf
											file = "Perseus\Functions\fn_Server_SendPlayer_PD.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};	
		class Server_SendPlayer_Attributes 	{ //This Function will Get the data from the database and send it to the client machine, executed from Server_SendPlayer_PD.
											file = "Perseus\Functions\fn_Server_SendPlayer_Attributes.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class Server_SendPlayer_Certs	{ //This Function will Get the data from the database and send it to the client machine, executed from Server_SendPlayer_PD.
											file = "Perseus\Functions\fn_Server_SendPlayer_Certs.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
		class Server_SendPlayer_MissionData	{ //This Function will Get the data from the database and send it to the client machine, executed from Server_SendPlayer_PD.
											file = "Perseus\Functions\fn_Server_SendPlayer_MissionData.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
		class Server_SavePlayer_MissionData	{ //This Function will Get the data from the database and send it to the client machine, executed from Server_SendPlayer_PD.
											file = "Perseus\Functions\fn_Server_SavePlayer_MissionData.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class Server_SendPlayer_Stash 	{ //This Function will Get the data from the database and send it to the client machine, executed from Server_SendPlayer_PD.
											file = "Perseus\Functions\fn_Server_SendPlayer_Stash.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
		class Client_SetupPlayer_Attributes	{	//This function gets called from Server_SendPlayer_PD and loads the players Attribute locally on the client machine.
											file = "Perseus\Functions\fn_Client_SetupPlayer_Attributes.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
		class Client_SetPlayer_Attributes	{	//Configures the Attributes to specific character modifiers
											file = "Perseus\Functions\fn_Client_SetPlayer_Attributes.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
	class Client_SetupPlayer_MissionData	{	//This function gets called from Server_SendPlayer_PD and loads the Specific Mission data, i.e. Gear, health, location, direction locally on the client machine.
											file = "Perseus\Functions\fn_Client_SetupPlayer_MissionData.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class Client_SetupPlayer_Stash	{	//This function gets called from Server_SendPlayer_PD and loads the players Stash locally on the client machine.
											file = "Perseus\Functions\fn_Client_SetupPlayer_Stash.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};

			class Client_SendPlayer_Stash 	{
											file = "Perseus\Functions\fn_Client_SendPlayer_Stash.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
		class Client_SendPlayer_Attributes 	{
											file = "Perseus\Functions\fn_Client_SendPlayer_Stash.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
		};
		class Zeus
		{
			class Server_InitMissionData 	{
											file = "Perseus\Functions\fn_Server_InitMissionData.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class Server_LoadMissionData 	{
											file = "Perseus\Functions\fn_Server_LoadMissionData.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class Server_SaveMissionData 	{
											file = "Perseus\Functions\fn_Server_SaveMissionData.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class Server_SaveObjectData 	{
											file = "Perseus\Functions\fn_Server_SaveObjectData.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};		
			class Server_LoadObjectData 	{
											file = "Perseus\Functions\fn_Server_LoadObjectData.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};		
		};
		class Mission
		{
			class Server_UpdateMarkers	 	{
											file = "Perseus\Functions\fn_Server_UpdateMarkers.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class Server_AddObject		 	{ //Adds the Zeus dropped object to the backup list (attached to curator place eventhandler
											file = "Perseus\Functions\fn_Server_AddObject.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
			class Server_Add_DMG_Mkr 	{ //Detects buildings around the area of the marker and records the damage of the map object. Planned Utilization of Empty Markers. It will check if damage exists on object, if no damage detected it will delete the marker.
											file = "Perseus\Functions\fn_Server_Add_DMG_Mkr.sqf";  //Location of Function
											preStart = 1; //1 to call the function upon game start, before title screen, but after all addons are loaded.
											recompile = 1; //1 to recompile the function upon mission start
											ext = ".sqf"; //Set file type, can be ".sqf" or ".fsm" (meaning scripted FSM). Default is ".sqf".
											headerType = 0; //Set function header type: -1 - no header; 0 - default header; 1 - system header.
											};
		};	
	
	
	
	
	
	};