/*
	Name:			Perseus_fnc_Server_SavePlayer_MissionData
	Author:			OzDeaDMeaT
	Description:	Sets item cargo from array
	Must spawn:		NO
    Usage Example:	_this spawn Perseus_fnc_Server_SavePlayer_MissionData //Designed to be executed with Disconnect Event Handler
	
	Parameters:
        Index				Type				Variable				Notes
		0					OBJECT				_player					Player Object
		1					INT 				_clientID				Client ID number
		2					STRING				_uid					Player UID
		3					STRING				_name					Player Name



    Return:
							NULL				true					Returns true when function is complete
*/
private ["_player",
		"_clientID",
		"_uid",
		"_name",
		"_Array"
		];
_player = _this select 0;
_clientID = _this select 1;
_uid = _this select 2;
_name = _this select 3;
_DataLoaded = _player getVariable ["PD_DATA_LOADED", False];
sleep 4;
if((PERSEUS_SERVER getVariable "GM_READY") && !(PERSEUS_SERVER getVariable "IS_TRAINING"))  then {
	if(_DataLoaded) then {
		[format ["set_player_missiondata:%1:%2:%3:%4:%5:%6", _uid, missionName, PERSEUS_SERVER getVariable "GM_UID", 0, [getpos _player, getdir _player], getunitloadout _player],2] call Perseus_fnc_ExtDB2_async;
		if(DEBUG) then {format ["%1 has disconnected, his data was saved to the database", _name] remoteExecCall ["hint", -2]};
		}
	else {
		if(DEBUG) then {format ["%1 has disconnected, his data was NOT saved to the database due to incorrect slot selection", _name] remoteExecCall ["hint", -2]};
		};
	}
Else {
	if (PERSEUS_SERVER getVariable "IS_TRAINING") then {
		if(DEBUG) then {format ["%1 has disconnected, data not saved as this is a training mission", _name] remoteExecCall ["hint", -2]};
		};
	};
	sleep 1;
_Array = (nearestObjects [_player,[],2.5]);
{If(_x isKindOf "WeaponHolderSimulated") then {deletevehicle _x}} foreach _Array;
deletevehicle _player;
exit;
