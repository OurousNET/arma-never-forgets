/*
	Name:			Perseus_fnc_Client_SendPlayer_Stash
	Author:			OzDeaDMeaT
	Description:	Sets item cargo from array
	Must spawn:		NO
    Usage Example:	[Crate, player] call Perseus_fnc_Client_SendPlayer_Stash //Designed to be used with containerClosed Event Handler
	
	Parameters:
        Index				Type				Variable				Notes
		0					OBJECT				_crate					Object to read Stash cargo from
		1					PLAYER				_unit					Unit that closes stash
    Return:
							BOOL				true					Returns true if cargo sent, False if no data sent
*/
private ["_crate" , "_GlobalStash" , "_Training" , "_crateType" , "_uid" , "_MissionName" , "_ammo", "_weap" , "_item" , "_bkpk" , "_data"];
_crate			=  _this select 0;
_unit			=  _this select 1;
_GlobalStash = PERSEUS_SERVER getVariable "ALLOW_GLOBAL_STASH";
_Training = PERSEUS_SERVER getVariable "IS_TRAINING";
_crateType 	= typeOf _crate;
If(IsClass (configfile >> "CfgVehicles" >> _crateType)) then {
	If !(_Training) then {
		_uid 			= getPlayerUID _unit;
		_MissionName	= If (_GlobalStash) then {''} Else {missionName};
		_ammo 			= getMagazineCargo _crate;
		_weap 			= getWeaponCargo _crate;
		_item 			= getItemCargo _crate;
		_bkpk 			= getBackpackCargo _crate;
		If!(LAST_STASHDATA_FROM_SERVER isEqualTo [_ammo, _weap, _item, _bkpk]) then {		
			_data = format ["player_set_stash:%1:'':%3:%4:%5:%6",_uid, _MissionName, _ammo, _weap, _item, _bkpk];
			[_data,2] remoteExecCall ["Perseus_fnc_ExtDB2_async", 2];
			if(DEBUG) then {hint "DEBUG: Stash Loadout modified, update sent to server"};
			LAST_STASHDATA_FROM_SERVER = [_ammo, _weap, _item, _bkpk];
			}
		Else {
			if(DEBUG) then {hint "DEBUG: Stash Loadout not modified, no update sent to server"};
			};
		};
	_return = true;
	}
else {
	hint format ["%1 - CRATE TYPE INVALID - NO CRATE LOADED", _crateType];
	_return = false;
	};
_return
