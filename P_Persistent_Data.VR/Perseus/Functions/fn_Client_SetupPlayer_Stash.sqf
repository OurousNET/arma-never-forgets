/*
	Name:			Perseus_fnc_Client_SetupStash
	Author:			OzDeaDMeaT
	Description:	Sets item cargo from array
	Must spawn:		NO
    Usage Example:	[<CrateType>,CrateSpawnLocation,[[AmmoType],[AmmoCount]],[[WeaponType],[WeaponCount]],[[ItemType],[ItemCount]],[[BkPkType],[BkPkCount]]] call Perseus_fnc_Client_SetupStash
	
	Parameters:
        Index				Type				Variable				Notes
		0					OBJECT				_crate					Object to add item cargo to
		1					OBJECT 				_crateLOC				Spawn Location Object (GameLogic)
		2					ARRAY				_ammo					Ammo [CLASSNAME,AMOUNT]
		3					ARRAY				_weap					Weapon [CLASSNAME,AMOUNT]
		4					ARRAY				_item					Item [CLASSNAME,AMOUNT]
		5					ARRAY				_bkpk					BackPack [CLASSNAME,AMOUNT]
		
		
    Return:
							BOOL				true					Returns true when function is complete
*/
private ["_crateType" , "_ammo", "_weap" , "_item" , "_bkpk" , "_crate" , "_handle" , "_Training" , "_Global", "_txt"];
_crateType 		= _this select 0;
_ammo 			= _this select 1;
_weap 			= _this select 2;
_item 			= _this select 3;
_bkpk 			= _this select 4;
_Global = PERSEUS_SERVER getVariable "ALLOW_GLOBAL_STASH";
_Training = PERSEUS_SERVER getVariable "IS_TRAINING";
LAST_STASHDATA_FROM_SERVER = [_ammo, _weap, _item, _bkpk];

//hint format ["Ammo - %1\nWeap - %2\nItem - %3\nBkPk - %4", _ammo, _weap, _item, _bkpk];
If(IsClass (configfile >> "CfgVehicles" >> _crateType)) then {
	//Crate Type Exists in Config so create local crate
	STASH_CRATE		= _crateType createVehicleLocal STASH_SPAWN_LOCATION; //Spawn Crate
	STASH_CRATE allowdamage false; // Disabled Damage for Crate
	clearBackpackCargo STASH_CRATE;
	clearWeaponCargo STASH_CRATE;
	clearItemCargo STASH_CRATE;
	clearMagazineCargo STASH_CRATE;
	STASH_CRATE setpos STASH_SPAWN_LOCATION;
	STASH_CRATE setdir STASH_SPAWN_DIRECTION;
	If !(_Training) then {STASH_CRATE addeventhandler ["ContainerOpened",{hint parseText "<t color='#FF0066' size='1.8' shadow='1' shadowColor='#000000' align='center'>WARNING</t><br/><br/><t color='#EEEEEE' size='1.4' shadow='1' shadowColor='#000000' align='center'>The Following is not saved:</t><br/><br/><t color='#EEEEEE' size='1.1' shadow='1' shadowColor='#000000' align='center'>Attachments / Magazines on weapons<br/>Items in uniforms, backpacks, vests</t><br/><br/><t color='#EB8A1C' size='0.9' shadow='1' shadowColor='#000000' align='center'>Please be sure to your weapons, uniforms, vests and backpacks have no items in or attached before closing your stash inventory</t>"}];
		}
	Else {
	STASH_CRATE addeventhandler ["ContainerOpened",{hint parseText "<t color='#FF0066' size='1.8' shadow='1' shadowColor='#000000' align='center'>TRAINING CRATE</t><br/><br/><t color='#EEEEEE' size='1.4' shadow='1' shadowColor='#000000' align='center'>No Stash data will be saved</t>"}];
		};
	STASH_CRATE addeventhandler ["ContainerClosed",{_this call Perseus_fnc_Client_SendPlayer_Stash}];
	_handle = [STASH_CRATE,_ammo] call Perseus_fnc_AmmoCargoLoad;
	waitUntil{_handle};
	_handle = [STASH_CRATE,_weap] call Perseus_fnc_WeaponCargoLoad;
	waitUntil{_handle};
	_handle = [STASH_CRATE,_item] call Perseus_fnc_ItemCargoLoad;
	waitUntil{_handle};
	_handle = [STASH_CRATE,_bkpk] call Perseus_fnc_BkPkCargoLoad;
	waitUntil{_handle};
	_txt = 	If (_Training) then {
				"Training Mission, Empty Stash Loaded"
				}
			Else {
				If(_Global) then {
					"Your Global Stash crate has been loaded"
					}
				Else {
					"Your Mission Stash crate has been loaded"
					};
				};
	systemchat _txt;
	_return = true;
	}
else {
	systemchat "CRATE TYPE INVALID - NO CRATE LOADED";
	_return = false;
	};
_return 
