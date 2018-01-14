disableSerialization;
params [
	["_disp", displayNull, [displayNull]]
];
//init display
uiNamespace setVariable ["perseus_val_ui_activeDisplay", _disp];
//init stats
call perseus_fnc_ui_resetCharacterSheet;
//attribute names
for "_i" from 0 to 4 do {
	_ctrl = _disp displayCtrl (130+_i);
	_ctrl ctrlSetText ((perseus_val_playerAttributeInfo select (1+_i)) select 0);
	_ctrl ctrlSetToolTip ((perseus_val_playerAttributeInfo select (1+_i)) select 1);
};
//apply