disableSerialization;
//init display
_disp = uiNamespace getVariable "perseus_val_ui_activeDisplay";
//init stats
perseus_val_currentPlayerAttributes = +perseus_val_originalPlayerAttributes;
perseus_val_possiblePlayerAttributes = +perseus_val_originalPlayerAttributes;
for "_i" from 0 to 4 do {
	//minus buttons
	_ctrl = _disp displayCtrl (100+_i);
	_ctrl ctrlSetText "Perseus\Interface\Textures\MINUS_DISABLED.paa";
	_ctrl ctrlEnable false;
	//plus buttons
	_ctrl = _disp displayCtrl (110+_i);
	if((perseus_val_possiblePlayerAttributes select 0) > 0 && (perseus_val_possiblePlayerAttributes select (1+_i)) < (perseus_val_playerAttributeInfo select 0)) then {
		_ctrl ctrlSetText "Perseus\Interface\Textures\PLUS_NORM.paa";
		_ctrl ctrlEnable true;
	} else {
		_ctrl ctrlSetText "Perseus\Interface\Textures\PLUS_DISABLED.paa";
		_ctrl ctrlEnable false;
	};
	//value display
	(_disp displayCtrl (120+_i)) ctrlSetText str (perseus_val_possiblePlayerAttributes select (1+_i));
};
//setup unspent
(_disp displayCtrl 140) ctrlSetText format ["Unspent Skill Points: %1", perseus_val_possiblePlayerAttributes select 0];
//setup apply
_ctrl = _disp displayCtrl 141;
_ctrl ctrlSetText "Perseus\Interface\Textures\APPLY_DISABLED.paa";
_ctrl ctrlEnable false;
//setup reset
_ctrl = _disp displayCtrl 142;
_ctrl ctrlSetText "Perseus\Interface\Textures\RESET_DISABLED.paa";
_ctrl ctrlEnable false;