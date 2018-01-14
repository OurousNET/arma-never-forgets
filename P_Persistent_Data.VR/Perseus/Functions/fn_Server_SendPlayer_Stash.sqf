/*
	Name:			Perseus_fnc_Server_SendPlayer_Stash
	Author:			OzDeaDMeaT
	Description:	Sets item cargo from array
	Must spawn:		NO
    Usage Example:	[player, true, true, false] call Perseus_fnc_Server_SendPlayerStash
	
	Parameters:
        Index				Type				Variable				Notes
		0					OBJECT				_crate					Object to add item cargo to
		1					TEXT 				_uid					True if player is marked as VIP in DB, otherwise False
		2					BOOL 				_VIP					True if player is marked as VIP in DB, otherwise False
		3					BOOL				_Training				If Training enabled, load empty stash crate
	
    Return:
							BOOL				true					Returns true when function is complete
*/
private ["_player" , "_uid" , "_VIP" , "_Global" , "_Training" , "_crateType" , "_emptyArray" , "_ammo", "_weap" , "_item" , "_bkpk" , "_crate" , "_handle" , "_VIP"];
_player = _this select 0; //unit
_uid = _this select 1; //UID
_VIP = _this select 2; //TRUE or FALSE
_GlobalStash 	= PERSEUS_SERVER getVariable "ALLOW_GLOBAL_STASH";
_Training 		= PERSEUS_SERVER getVariable "IS_TRAINING";
_crateType 		= if(_VIP) then {STASH_VIP_OBJ} Else {STASH_OBJ};
_emptyArray = [[],[]];

_stashdata = If(_GlobalStash) then {
				[format["player_get_stash:%1:''",_uid],2] call Perseus_fnc_ExtDB2_async;
				}
			Else {
				[format["player_get_stash:%1:%2",_uid, missionName],2] call Perseus_fnc_ExtDB2_async;
				};
If((count _stashdata == 0) || _Training) then {
	[_crateType, _emptyArray, _emptyArray, _emptyArray, _emptyArray] remoteExecCall ["Perseus_fnc_Client_SetupPlayer_Stash", _player];
	}
Else {
	
	_stashdata = _stashdata select 0;
	_ammo 			= _stashdata select 2;
	_weap 			= _stashdata select 3;
	_item 			= _stashdata select 4;
	_bkpk 			= _stashdata select 5;
	//hint format ["DataFound \nAmmo - %1\nWeap - %2\nItem - %3\nBkPk - %4", _ammo,_weap, _item, _bkpk];
	[_crateType, _ammo, _weap, _item, _bkpk] remoteExecCall ["Perseus_fnc_Client_SetupPlayer_Stash", _player];
	};