/*
	Name:			Perseus_fnc_Server_SendPlayer_MissionData
	Author:			OzDeaDMeaT
	Description:	Sets item cargo from array
	Must spawn:		YES
    Usage Example:	[_player, _uid, _netid] spawn Perseus_fnc_Server_SendPlayer_MissionData
	
	Parameters:
        Index				Type				Variable				Notes
		0					OBJECT				_player					Object to add item cargo to
		1					OBJECT 				_uid				Spawn Location Object (GameLogic)
		2					ARRAY				_netid					Ammo [CLASSNAME,AMOUNT]
		
    Return:
							BOOL				true					Returns true when function is complete
*/
private ["_player" , "_VIP" , "_Global" , "_Training" , "_crateType" , "_emptyArray", "_data"];
_player = _this select 0;
_uid = _this select 1;
_netid = _this select 2;
_player setVariable ["PD_DATA_LOADED", false, false]; //This sets the variable to check for loaded data to false
_player setUnitTrait ["Medic", PERSEUS_SERVER getVariable "ALL_Medic"];
_player setUnitTrait ["Engineer ", PERSEUS_SERVER getVariable "ALL_Engineer"];
_AllowPlayerPos = PERSEUS_SERVER getVariable "ALLOW_PLAYER_POS";
_GlobalStash 	= PERSEUS_SERVER getVariable "ALLOW_GLOBAL_STASH";
_Training 		= PERSEUS_SERVER getVariable "IS_TRAINING";
sleep 2;
[[],{titletext ["","BLACK IN",300];}] remoteExecCall ["call",_player];
"Initializing Mission Data System....Please Wait" remoteExecCall ["systemchat",_player];
sleep 10;
_Check = [format ["get_player_missiondata:%1:%2:%3", _uid, MissionName, PERSEUS_SERVER getVariable "GM_UID"],2] call Perseus_fnc_ExtDB2_async; //Check DB for information regarding player
If(count _Check == 0) then {
	"No Player Mission Data available" remoteExec ["systemchat",_player];
	If(DEBUG) then {hint format ["DEBUG:: UID = %1\nMissionName = %2\nGMUID = %3\nCheck = %4", _uid, MissionName, PERSEUS_SERVER getVariable "GM_UID", _Check]};
	[format ["set_player_missiondata:%1:%2:%3:%4:%5:%6", getPlayerUID _player, missionName, PERSEUS_SERVER getVariable "GM_UID", damage _player, [getpos _player, getdir _player], getunitloadout _player],2] call Perseus_fnc_ExtDB2_async; //If no data Set data
	[[],{titletext ["","BLACK IN",5];}] remoteExecCall ["call",_player];
	}
Else {
	"Loading Player Mission Data...." remoteExecCall ["systemchat",_player];
	_Check = _Check select 0;
	_data = _Check select [3,3];
	//If(DEBUG) then {hint format ["DEBUG:: UID = %1\nMissionName = %2\nGMUID = %3\nLoadOut = %4", _uid, MissionName, PERSEUS_SERVER getVariable "GM_UID", _data select 2]};
	_data remoteExecCall ["Perseus_fnc_Client_SetupPlayer_MissionData", _player];//Send data to client for execution
	_player setUnitLoadout [_data select 2, false]; //Load data locally on server, Desync from client when saving back can occur
	[[],{titletext ["","BLACK IN",5];}] remoteExecCall ["call",_player];
	};
_player setVariable ["PD_DATA_LOADED", true, false]; //This sets the variable to check for loaded data to false
exit;