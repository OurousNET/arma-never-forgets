/*
	Name:			Perseus_fnc_Server_SendPlayer_Attributes
	Author:			OzDeaDMeaT
	Description:	Sets item cargo from array
	Must spawn:		NO
    Usage Example:	player call Perseus_fnc_Server_SendPlayer_Attributes
	
	Parameters:
        Index				Type				Variable				Notes
		0					OBJECT				_player					Player Unit
		1					text				_uid					Player UID
	
    Return:
							N/A
*/

private ["_player" , "_VIP" , "_Global" , "_Training" , "_crateType" , "_emptyArray" , "_ammo", "_weap" , "_item" , "_bkpk" , "_crate" , "_handle" , "_VIP"];
_player = _this select 0; //player unit
_uid 	= _this select 1; //player uid

_PlayerAttributes = ([format ["get_player_attrib:%1", _uid],2] call Perseus_fnc_ExtDB2_async) select 0;
_Attributes = _PlayerAttributes select [1, 6];
_Attributes remoteExecCall ["Perseus_fnc_Client_SetupPlayer_Attributes", _player]; // Certs not yet implimented
exit