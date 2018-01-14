waituntil {!isnull player && Alive player};

titleText ["Preparing Mission","BLACK IN",99999999];
ClearPlayerData = {
profileNamespace setVariable [format ["%1_GEAR", missionName],nil];
profileNamespace setVariable [format ["%1_PLAYERLOC", missionName],nil];
profileNamespace setVariable [format ["%1_HEALTH", missionName],nil];
profileNamespace setVariable [format ["%1_BOOL", missionName],nil];
saveProfileNamespace;
systemChat "Player Data Wiped";
};

SavePlayerData = {
private [
		"_dir",
		"_posASL",
		"_health",
		"_headgear",
		"_goggles",
		"_uniform",
		"_uniformITEMS",
		"_vest",
		"_vestITEMS",
		"_backpack",
		"_backpackITEMS",
		"_priW",
		"_priWitems",
		"_priWmag",
		"_secW",
		"_secWitems",
		"_secWmag",
		"_hgW",
		"_hgWitems",
		"_hgWmag",
		"_assignedItems",
		"__playerloc",
		"__playerUniform",
		"_weapons",
		"_weaponsITEMS",
		"_weaponsMAGS",
		"_inventory"
		];		
	_dir = getDir player;
	_posASL = getPosASL player;
	_health = Damage player;
	_headgear = headgear player;
	_goggles = goggles player;
	_uniform = uniform player;
	_uniformITEMS= uniformItems player;
	_vest = vest player;
	_vestITEMS = vestItems player;
	_backpack = backpack player;
	_backpackITEMS = backpackItems player;
	_priW = ([primaryWeapon player] call BIS_fnc_baseWeapon);
	_priWitems = primaryWeaponItems player;
	_priWmag = primaryWeaponMagazine player;
	_secW = ([secondaryWeapon player] call BIS_fnc_baseWeapon);
	_secWitems = secondaryWeaponItems player;
	_secWmag = secondaryWeaponMagazine player;
	_hgW = ([handgunWeapon player] call BIS_fnc_baseWeapon);
	_hgWitems = handgunItems player;
	_hgWmag = handgunMagazine player;
	_assignedItems = assignedItems player;
	__playerUniform = 		[_headgear, _goggles, _uniform, _vest, _backpack];
	_weapons = 		[_priW,_secW,_hgW];
	_weaponsITEMS = [_priWitems, _secWitems, _hgWitems];
	_weaponsMAGS = 	[_priWmag, _secWmag, _hgWmag];
	_inventory =	[_uniformITEMS, _vestITEMS, _backpackITEMS, _assignedItems];
	__playerloc =	[_posASL, _dir];
	_gear = [__playerUniform, _weapons, _weaponsITEMS, _weaponsMAGS, _inventory];
	profileNamespace setVariable [format ["%1_GEAR", missionName],_gear];
	profileNamespace setVariable [format ["%1_PLAYERLOC", missionName],__playerloc];
	profileNamespace setVariable [format ["%1_HEALTH", missionName],_health];
	profileNamespace setVariable [format ["%1_BOOL", missionName],true];
	saveProfileNamespace;
	systemChat "Player Data Saved";
};

LoadPlayerData = {
private [
		"_dir",
		"_posASL",
		"_health",
		"_headgear",
		"_goggles",
		"_uniform",
		"_uniformITEMS",
		"_vest",
		"_vestITEMS",
		"_backpack",
		"_backpackITEMS",
		"_priW",
		"_gear",
		"_priWitems",
		"_priWmag",
		"_secW",
		"_secWitems",
		"_secWmag",
		"_hgW",
		"_hgWitems",
		"_hgWmag",
		"_assignedItems",
		"__playerloc",
		"__playerUniform",
		"_weapons",
		"_weaponsITEMS",
		"_weaponsMAGS",
		"_inventory"
		];
If(profileNamespace getVariable [format ["%1_BOOL", missionName],false]) then {
	systemchat format ["Welcome back %1, retrieving your mission profile, please wait", name player];
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;
	_health = profileNamespace getVariable format ["%1_HEALTH", missionName];	
	_playerloc = profileNamespace getVariable format ["%1_PLAYERLOC", missionName];
	_gear = profileNamespace getVariable format ["%1_GEAR", missionName];
		_playerUniform 	= _gear select 0;
			_headgear 	= _playerUniform select 0;
			_goggles 	= _playerUniform select 1;
			_uniform 	= _playerUniform select 2;
				_vest	 = _playerUniform select 3;
			_backpack 	= _playerUniform select 4;
		_weapons 		= _gear select 1;
				_priW		= _weapons select 0;
				_secW		= _weapons select 1;
				_hgW		= _weapons select 2;	
		_weaponsITEMS	= _gear select 2;
				_priWitems	= _weaponsITEMS select 0;
				_secWitems	= _weaponsITEMS select 1;
				_hgWitems	= _weaponsITEMS select 2;	
		_weaponsMAGS	= _gear select 3;
				_priWmag	= _weaponsMAGS select 0;
				_secWmag	= _weaponsMAGS select 1;
				_hgWmag		= _weaponsMAGS select 2;
					_mags	= _priWmag + _secWmag + _hgWmag;
		_inventory		= _gear select 4;
			_uniformITEMS	= _inventory select 0;
				_vestITEMS	= _inventory select 1;
			_backpackITEMS	= _inventory select 2;
			_assignedItems	= _inventory select 3;
	player setPosASL 	(_playerloc select 0);
	player setdir 		(_playerloc select 1);
	systemChat "Location Loaded";
	player setDamage _health;
	systemChat "Health Loaded";
	player addBackpack "B_Carryall_cbr"; //add temp backpack while weapon mags are loaded
	If (count _mags != 0) then {		{If(_x != "") then {	player addmagazine _x} 				} foreach _mags			};
	if (_priW != "") then {player addWeapon _priW};
	if (_secW != "") then {player addWeapon _secW};
	if (_hgW != "") then {player addWeapon _hgW};
	If (count _priWitems != 0) then {	{If(_x != "") then {	player addPrimaryWeaponItem _x}		} foreach _priWitems	};
	If (count _secWitems != 0) then { 	{If(_x != "") then {	player addSecondaryWeaponItem _x}	} foreach _secWitems	};
	If (count _hgWitems != 0) then { 	{If(_x != "") then {	player addHandgunItem _x}			} foreach _hgWitems		};	
	systemChat "Weapons Loaded";
	
	if (_headgear != "") then {player addHeadgear _headgear};
	if (_goggles != "") then {player addGoggles _goggles};
	if (_uniform != "") then {player forceaddUniform _uniform};
	if (_vest != "") then {player addVest _vest};
	removeBackpack player;
	if (_backpack != "") then {
		player addBackpack _backpack; 
		clearBackpackCargo player;
		If (count _backpackITEMS != 0) then { 	{player additemtoBackpack _x} foreach _backpackITEMS	};
		};

	If (count _assignedITEMS != 0) then {	{If((gettext (configFile >> "CfgWeapons" >> _x >> "displayName")) != "") then {player addweapon _x} Else {player linkItem _x}	} foreach _assignedITEMS	};
	If (count _uniformITEMS != 0) then { 	{player additemtoUniform _x	} foreach _uniformITEMS	};
	If (count _vestITEMS != 0) then { 		{player additemtoVest _x	} foreach _vestITEMS	};
	
	systemChat "Inventory Loaded";
	}	
Else {
	call SavePlayerData;
	systemchat format ["Welcome %1, your mission profile have been created", name player];
	};
titleText ["Mission Ready","BLACK IN",5];
};

sleep 6;
0 = [] spawn LoadPlayerData;






