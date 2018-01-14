/*
	Name:			Perseus_fnc_Client_SetupPlayerAttributes
	Author:			OzDeaDMeaT
	Description:	Sets item cargo from array
	Must spawn:		NO
    Usage Example:	[_player, _Attributes, _Access, _certifications] call Perseus_fnc_Client_SetupPlayerAttributes
	
	Parameters:
        Index				Type				Variable				Notes
		0					PLAYER				_Player					Player Character Object
		1					ARRAY 				_Attributes				Attributes of the player
		2					ARRAY				_Access					Access Granted by the DataBase
		3					ARRAY				_Certifications			Certifications

    Return:
							Nothing
*/

private ["_Player", "_Attributes", "_Access", "_Certifications", "_VIP", "_GM", "_Admin", "_SuperAdmin"];
	_Player		= _this select 0;
	_Attributes = _this select 1;
	_Access 	= _this select 2;
		_VIP	= _Access select 0;
		_GM		= _Access select 1;
		_Admin	= _Access select 2;
	_SuperAdmin	= _Access select 3;
_Certifications = _this select 3;

LAST_ATTRIBUTES_FROM_SERVER = +_Attributes;
_player setVariable ["Attributes", _Attributes, true];
_player setVariable ["VIP", _VIP, true];
_player setVariable ["GM", _GM, true];
_player setVariable ["ADMIN", _Admin, true];
_player setVariable ["SUPERADMIN", _SuperAdmin, true];
_player setVariable ["CERTS", _Certifications, true];
perseus_val_originalPlayerAttributes = +_Attributes;
//hint format ["Array = %1",_Attributes];
