disableSerialization;
perseus_val_originalPlayerAttributes = +perseus_val_currentPlayerAttributes;
//OZ CODE HERE
If!(LAST_ATTRIBUTES_FROM_SERVER isEqualTo perseus_val_originalPlayerAttributes) then {
	systemchat format ["%1 your character data sent to server", name player];
	[format ["set_player_attrib:%1:%2:%3:%4:%5:%6:%7", getPlayerUID player, perseus_val_originalPlayerAttributes select 0, perseus_val_originalPlayerAttributes select 1, perseus_val_originalPlayerAttributes select 2, perseus_val_originalPlayerAttributes select 3, perseus_val_originalPlayerAttributes select 4, perseus_val_originalPlayerAttributes select 5],2] call Perseus_fnc_ExtDB2_async;
	};

//END OZ CODE
true;