//This file is designed to be editted if you wish to change any default behaviour of the particular mission you are trying to create.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
DEBUG = TRUE; //Adds DEBUG Messages to some Functions
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//MISSION DEFAULT SETTINGS - These are loaded if a GM hasn't loaded a mission
//These settings will be loaded from the GM saveGame
If(isServer) then {
	ALLOW_GLOBAL_STASH 	= TRUE;	// This will load the server global Stash instead of the mission specific stash. If  Training is enabled an empty stash is always loaded and data is never stored.
	ALLOW_PLAYER_POS 	= TRUE;  // This will load the position and direction the player was the last time they played
	IS_TRAINING			= FALSE; //(RECOMMENDED: TRUE) This is the setting loaded if no GM is available or if 
	ALL_Medic 			= TRUE; //This will enable Medic specialty for all players 
	ALL_Engineer 		= TRUE; //This will enable Engineer specialty for all players
	GM_READY			= TRUE; //(RECOMMENDED: TRUE) This is an option the GM can set in the GM interface, if this is changed it will endMission all players except for the GM while he selects a mission. Until the GM has selected Ready will the server accept connections for players. If set to False only the GM will be able to join until they change the variable GM_Ready NOTE: MUST BE SET TO TRUE IF EDITING MISSION IN SINGLEPLAYER
	VIP_ROLE			= "VIP ONLY SLOT";
	PRIMARY_GM			= "PRIMARY GM SLOT";
	CAMPAIGN_DEATHS		= 0;	//Default Value for new missions, when missions are loaded from DB  this value is overwritten
	CAMPAIGN_LIVES		= 10; 	//Default New Mission Lives Count, this can be changed by the GM, when missions are loaded from DB this value is overwritten. 
	CAMPAIGN_DAYS		= 0;	//Default Value for new missions, when missions are loaded from DB  this value is overwritten
	CAMPAIGN_MISSIONS	= 0;	//Default Value for new missions, when missions are loaded from DB this value is overwritten
	};
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//STASH 
//Position of Stash Spawn 
// STASH_CRATE is the local object name used for the player stash. The player stash is intended to only be in one location near the main respawn location.
STASH_SPAWN_LOCATION 	= (getpos PERSONAL_STASH_LOCATION); //REQUIRED
STASH_SPAWN_DIRECTION 	= (getdir PERSONAL_STASH_LOCATION); //REQUIRED
//Recommend keeping this consistent between all missions on a server
//Default Stash Crate Object Type
STASH_OBJ = "Box_NATO_WpsSpecial_F"; //REQUIRED Capacity 2k
//Recommend keeping this consistent between all missions on a server
//Default VIP Stash Crate Object Type
STASH_VIP_OBJ = "B_supplyCrate_F"; //REQUIRED Capacity 4k
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//LOAD DATA INTO PERSEUS_SERVER Game Logic - DONT EDIT BELOW THIS LINE
If(isServer) then {
	PERSEUS_SERVER setVariable ["ALLOW_GLOBAL_STASH",ALLOW_GLOBAL_STASH, true];
	PERSEUS_SERVER setVariable ["ALLOW_PLAYER_POS",ALLOW_PLAYER_POS, true];
	PERSEUS_SERVER setVariable ["IS_TRAINING",IS_TRAINING, true];
	PERSEUS_SERVER setVariable ["GM_READY",GM_READY, true];
	PERSEUS_SERVER setVariable ["ALL_Medic",ALL_Medic, true];
	PERSEUS_SERVER setVariable ["ALL_Engineer",ALL_Engineer, true];
	PERSEUS_SERVER setVariable ["GM_UID","NO_GM_PRESENT", true];
	PERSEUS_SERVER setVariable ["CAMPAIGN_DATA",[CAMPAIGN_DEATHS,CAMPAIGN_LIVES,CAMPAIGN_DAYS, CAMPAIGN_MISSIONS], true];
	};
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////