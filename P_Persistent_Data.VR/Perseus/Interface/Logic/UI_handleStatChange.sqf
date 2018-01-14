disableSerialization;
params [
	["_id", 0, [0]],
	["_de", 0, [0]]
];
//init display
_disp = uiNamespace getVariable "perseus_val_ui_activeDisplay";
//do stuff
perseus_val_possiblePlayerAttributes set [1+_id, (perseus_val_possiblePlayerAttributes select (1+_id))+_de];
perseus_val_possiblePlayerAttributes set [0, (perseus_val_possiblePlayerAttributes select 0)-_de];
//update ui
for "_i" from 0 to 4 do {
	_ctrl = _disp displayCtrl (100+_i);
	if (perseus_val_possiblePlayerAttributes select (1+_i) > perseus_val_currentPlayerAttributes select (1+_i)) then {
		if (!(ctrlEnabled _ctrl)) then {
			_ctrl ctrlSetText "Perseus\Interface\Textures\MINUS_NORM.paa";
			_ctrl ctrlEnable true;
		};
	} else {
		if(ctrlEnabled _ctrl) then {
			_ctrl ctrlSetText "Perseus\Interface\Textures\MINUS_DISABLED.paa";
			_ctrl ctrlEnable false;
		};
	};
	_ctrl = _disp displayCtrl (110+_i);
	if((perseus_val_possiblePlayerAttributes select 0) > 0 && (perseus_val_possiblePlayerAttributes select (1+_i)) < (perseus_val_playerAttributeInfo select 0)) then {
		if (!(ctrlEnabled _ctrl)) then {
			_ctrl ctrlSetText "Perseus\Interface\Textures\PLUS_NORM.paa";
			_ctrl ctrlEnable true;
		};
	} else {
		if (ctrlEnabled _ctrl) then {
			_ctrl ctrlSetText "Perseus\Interface\Textures\PLUS_DISABLED.paa";
			_ctrl ctrlEnable false;
		};
	};
	(_disp displayCtrl (120+_i)) ctrlSetText str (perseus_val_possiblePlayerAttributes select (1+_i));
};
(_disp displayCtrl 140) ctrlSetText format ["Unspent Skill Points: %1", perseus_val_possiblePlayerAttributes select 0];
//reset button
_ctrl = _disp displayctrl 142;
if!(perseus_val_possiblePlayerAttributes isEqualTo perseus_val_originalPlayerAttributes) then {
	if!(ctrlEnabled _ctrl) then {
		_ctrl ctrlSetText "Perseus\Interface\Textures\RESET_NORM.paa";
		_ctrl ctrlEnable true;
	};
} else {
	if(ctrlEnabled _ctrl) then {
		_ctrl ctrlSetText "Perseus\Interface\Textures\RESET_DISABLED.paa";
		_ctrl ctrlEnable false;
	};
};
//apply button
_ctrl = _disp displayctrl 141;
if!(perseus_val_possiblePlayerAttributes isEqualTo perseus_val_currentPlayerAttributes) then {
	if!(ctrlEnabled _ctrl) then {
		_ctrl ctrlSetText "Perseus\Interface\Textures\APPLY_NORM.paa";
		_ctrl ctrlEnable true;
	};
} else {
	if(ctrlEnabled _ctrl) then {
		_ctrl ctrlSetText "Perseus\Interface\Textures\APPLY_DISABLED.paa";
		_ctrl ctrlEnable false;
	};
};