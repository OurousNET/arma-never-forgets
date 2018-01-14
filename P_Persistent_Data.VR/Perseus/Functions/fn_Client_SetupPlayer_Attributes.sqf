/*
	Name:			Perseus_fnc_Client_SetupPlayer_Attributes
	Author:			OzDeaDMeaT
	Description:	Sets Player Attributes
	Must spawn:		NO
    Usage Example:	_Attributes call Perseus_fnc_Client_SetupPlayerAttributes
	
	Parameters:
        Index				Type				Variable				Notes
		0					ARRAY 				_Attributes				Attributes of the player

    Return:
							Nothing
*/

private ["_Player", "_Attributes", "_Access", "_Certifications", "_VIP", "_GM", "_Admin", "_SuperAdmin"];
	_Attributes		= _this;

LAST_ATTRIBUTES_FROM_SERVER = +_Attributes;
perseus_val_originalPlayerAttributes = +_Attributes;
call Perseus_fnc_Client_SetPlayer_Attributes;
exit