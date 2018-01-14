/*
	Name:			Perseus_fnc_Client_SetPlayer_Attributes
	Author:			OzDeaDMeaT
	Description:	Sets Player Attributes
	Must spawn:		NO
    Usage Example:	call Perseus_fnc_Client_SetPlayerAttributes
	
	Parameters:
        Index				Type				Variable				Notes
		
    Return:
							Nothing
*/

private ["_PointsAvailable", "_value1", "_value2", "_value3", "_value4", "_value5", "_Attrib1", "_Attrib2", "_Attrib3", "_Attrib4", "_Attrib5", "_DEFAULT_SpeedCoef", "_DEFAULT_loadCoef", "_DEFAULT_RecoilCoef", "_DEFAULT_AimCoef", "_DEFAULT_audibleCoef", "_DEFAULT_camouflageCoef"];

_PointsAvailable = perseus_val_originalPlayerAttributes select 0;
_Attrib1 = perseus_val_originalPlayerAttributes select 1;		//Currently Physical Training
_Attrib2 = perseus_val_originalPlayerAttributes select 2;		//Currently Stealth
_Attrib3 = perseus_val_originalPlayerAttributes select 3;		//Currently Marksmanship
_Attrib4 = perseus_val_originalPlayerAttributes select 4;		//Currently Hacking
_Attrib5 = perseus_val_originalPlayerAttributes select 5;		//Currently Radio Operator

_DEFAULT_SpeedCoef = 0.8; //Attrib1
_DEFAULT_loadCoef = 1.2; //Attrib1
_DEFAULT_audibleCoef = 1.1; //Attrib2
_DEFAULT_camouflageCoef = 1.1; //Attrib2
_DEFAULT_RecoilCoef = 1.5; //Attrib3
_DEFAULT_AimCoef = 1.5; //Attrib3

//Attibute 1 Configuration - Currently Physical Training
if (_Attrib1 > 0) then {
	_value1 = ((_Attrib1 / 100) / 2.5);
	player setAnimSpeedCoef (_DEFAULT_SpeedCoef + _value1);
	player setUnitTrait ["loadCoef",(_DEFAULT_loadCoef - _value1)];
	//player sidechat format ["Value 1 = %1, value for loadcoef = %2", _value1, _DEFAULT_loadCoef - _value1];
	}
else {
	player setAnimSpeedCoef _DEFAULT_SpeedCoef;
	player setUnitTrait ["loadCoef",_DEFAULT_loadCoef];
};
	
//Attibute 2 Configuration - Currently Stealth
if (_Attrib2 > 0) then {
	_value2 = ((_Attrib2 / 100) / 2);
	player setUnitTrait ["audibleCoef", (_DEFAULT_audibleCoef - _value2)];
	player setUnitTrait ["camouflageCoef",(_DEFAULT_camouflageCoef - _value2)];
	}
else {
	player setUnitTrait ["audibleCoef",_DEFAULT_audibleCoef];
	player setUnitTrait ["camouflageCoef",_DEFAULT_camouflageCoef];
};

//Attibute 3 Configuration - Currently Marksmanship
if (_Attrib3 > 0) then {
	_value3 = (_Attrib3 / 100);
	player setUnitRecoilCoefficient (_DEFAULT_RecoilCoef - _value3);
	player setCustomAimCoef (_DEFAULT_AimCoef - _value3);
	}
else {
	player setUnitRecoilCoefficient _DEFAULT_RecoilCoef;
	player setCustomAimCoef _DEFAULT_AimCoef;
};

if (DEBUGMODE) then {hint format ["Player Character Mods \n Speed = %1\nLoad= %2\nRecoil= %3\nCamo= %4",getAnimSpeedCoef  player, player getUnitTrait "loadCoef", unitRecoilCoefficient player, player getUnitTrait "camouflageCoef"]};

/*

Attributes are divided by 100 to give decimal value

setUnitTrait 




	Attributes -20% -100%- +20%
	Physical Training
	player setAnimSpeedCoef 1.2; default
	player setAnimSpeedCoef 0.8; BEST
	player setUnitTrait ["loadCoef",1.2]; default
	player setUnitTrait ["loadCoef",0.8]; Best
	
	
	Attributes +50% -100%- -50%
	Marksmanship
	player setUnitRecoilCoefficient 1.5; default
	player setUnitRecoilCoefficient .5; Best
	player setCustomAimCoef 1.5; default
	player setCustomAimCoef 0.5; Best


	Attributes +50% -100%- -50%
	Stealth
	player setUnitTrait ["audibleCoef",1.1]; default
	player setUnitTrait ["audibleCoef",0.6]; Best
	player setUnitTrait ["camouflageCoef",1.1]; default
	player setUnitTrait ["camouflageCoef",0.6]; Best


Hacking - TBC

Radio Operator - TBC	

*/





exit