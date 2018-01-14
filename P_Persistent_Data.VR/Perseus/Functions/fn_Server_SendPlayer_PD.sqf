/*
	Name:			Perseus_fnc_Server_SendPlayer_PD
	Author:			OzDeaDMeaT
	Description:	Called from initPlayerServer.sqf
	Must spawn:		NO
    Usage Example:	[_player, _uid, _netid] spawn Perseus_fnc_Server_SendPlayer_PD
	
	Parameters:
        Index				Type				Variable				Notes
		0					OBJECT				_player					Object to add item cargo to
		1					OBJECT 				_uid				Spawn Location Object (GameLogic)
		2					ARRAY				_netid					Ammo [CLASSNAME,AMOUNT]
		
    Return:
							BOOL				true					Returns true when function is complete
*/
private ["_player" , "_VIP" , "_uid" , "_netid" , "_DCEH" , "_Check" , "_ammo", "_weap" , "_item" , "_bkpk" , "_crate" , "_handle" , "_VIP", "_IsGM" , "_IsAdmin" , "_IsSUPERAdmin" , "_Attributes", "_Banned", "_roleDescription"];
_player = _this select 0;
_uid = _this select 1;
_netid = _this select 2;
_DCEH = addMissionEventHandler ["HandleDisconnect",{_this spawn Perseus_fnc_Server_SavePlayer_MissionData}];
_Check = [format ["get_player_access:%1", _uid],2] call Perseus_fnc_ExtDB2_async;
if(count _Check == 0) then {
	[format["create_player:%1:%2", _uid, name _player],2] call Perseus_fnc_ExtDB2_async; // Creates Player entry in Database
	}
Else {
	[format["player_poke_seen:%1", _uid],2] call Perseus_fnc_ExtDB2_async; // Update Last Seen Time Stamp
	};
_PlayerAccess = ([format ["get_player_access:%1", _uid],2] call Perseus_fnc_ExtDB2_async) select 0;
_Banned = If ((_PlayerAccess select 4) == 1) then {TRUE} Else {FALSE};
_player setVariable ["BANNED",_Banned, true];

_VIP = If ((_PlayerAccess select 5) == 1) then {TRUE} Else {FALSE};
_player setVariable ["VIP",_VIP, true];

_IsGM = If ((_PlayerAccess select 6) == 1) then {TRUE} Else {FALSE};
_player setVariable ["GM",_IsGM, true];
_IsAdmin = If ((_PlayerAccess select 7) == 1) then {TRUE} Else {FALSE};
_player setVariable ["ADMIN",_IsAdmin, true];

_IsSUPERAdmin = If ((_PlayerAccess select 8) == 1) then {TRUE} Else {FALSE};
_player setVariable ["SUPERADMIN",_IsSUPERAdmin, true];

If(_Banned) exitwith {
	hint format ["Banned = %1", _Banned];
	["BANNED",false,0.1,false,false] remoteExecCall ["BIS_fnc_endMission", _player];
	}; //Boots players if Banned.

_Access = [_VIP , _IsGM , _IsAdmin , _IsSUPERAdmin];
_roleDescription = roleDescription _player;

If(!(_roleDescription == PRIMARY_GM) && !(PERSEUS_SERVER getVariable "GM_READY")) exitwith {["AWAITING_GM",false,0.1,false,false] remoteExecCall ["BIS_fnc_endMission", _player]}; //Boots players if GM_Ready not set.
If((_roleDescription == PRIMARY_GM) && !(_IsGM)) exitwith {["GM_ONLY",false,0.1,false,false] remoteExecCall ["BIS_fnc_endMission", _player]}; //Boots players taking GM slot that do not have permission to do so.
If((_roleDescription == PRIMARY_GM) && (_IsGM)) then {PERSEUS_SERVER setVariable ["GM_UID",_uid, true]}; //Set GM_UID for mission loading
If((_roleDescription == VIP_ROLE) && !(_VIP)) exitwith {["VIP_ONLY",false,0.1,false,false] remoteExecCall ["BIS_fnc_endMission", _player]}; //Boots players taking VIP slots that do not have permission to do so.

// Welcome Text for player
_txt = format ["Welcome %1, you have the following access levels on this server:", name _player];
_txt remoteExecCall ["systemchat", _player];

// Report Access levels
_txt1 = "Player";
if(_VIP) then {_txt1 = _txt1 + ", VIP Access"};
if(_IsGM) then {_txt1 = _txt1 + ", GM Privileges"};
if(_IsAdmin) then {_txt1 = _txt1 + ", Admin Privileges"};
if(_IsSUPERAdmin) then {_txt1 = _txt1 + ", Super Admin Privileges"};
_txt1 remoteExecCall ["systemchat", _player];
" " remoteExecCall ["systemchat", _player];
[_player, _uid] call Perseus_fnc_Server_SendPlayer_Attributes;	//Get Attributes from DB and send to Client Machine
[_player, _uid, _VIP] call Perseus_fnc_Server_SendPlayer_MissionData; //Get Mission Data from DB and send to Client Machine (Loadout, Position, direction, Health)
sleep 0.1;
[_player, _uid, _VIP] call Perseus_fnc_Server_SendPlayer_Stash; //Get Stash from DB and send to Client Machine
exit;