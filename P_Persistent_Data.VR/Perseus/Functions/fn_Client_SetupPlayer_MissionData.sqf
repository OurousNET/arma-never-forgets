/*
	Name:			Perseus_fnc_Client_Setupplayer_MissionData
	Author:			OzDeaDMeaT
	Description:	Sets item cargo from array
	Must spawn:		NO
    Usage Example:	[<CrateType>,CrateSpawnLocation,[[AmmoType],[AmmoCount]],[[WeaponType],[WeaponCount]],[[ItemType],[ItemCount]],[[BkPkType],[BkPkCount]]] call Perseus_fnc_Client_Setupplayer_MissionData
	
	Parameters:
        Index				Type				Variable				Notes
		0					OBJECT				_crate					Object to add item cargo to
		1					OBJECT 				_crateLOC				Spawn Location Object (GameLogic)
		2					ARRAY				_ammo					Ammo [CLASSNAME,AMOUNT]
		3					ARRAY				_weap					Weapon [CLASSNAME,AMOUNT]
		4					ARRAY				_item					Item [CLASSNAME,AMOUNT]
		5					ARRAY				_bkpk					BackPack [CLASSNAME,AMOUNT]
		
		
    Return:
							N/A
*/

private [
		"_loc_dir",
		"_health",
		"_loadout",
		"_pos",
		"_dir"
		];
	_health = _this select 0;
	_loc_dir = _this select 1;
	_loadout = _this select 2;
	_pos = _loc_dir select 0;
	_dir = _loc_dir select 1;
	player setUnitTrait ["Medic", PERSEUS_SERVER getVariable "ALL_Medic"];
	player setUnitTrait ["Engineer ", PERSEUS_SERVER getVariable "ALL_Engineer"];
	
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;
	player setDamage _health;
	//GET POS LOAD FROM PERSEUS_SERVER
	if(PERSEUS_SERVER getVariable "ALLOW_PLAYER_POS") then {
		player setdir _dir;
		//if(DEBUG) then {hint format ["DEBUG::\n Health = %1\n Loc = %2\n Loadout = %3", _health, _pos, _loadout]};	
		player setpos _pos;
		};
	player setUnitLoadout [_loadout, false];
exit;