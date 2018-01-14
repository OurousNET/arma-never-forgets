disableSerialization;
params [
	"_ctrl",
	["_code", 0, [0]],
	["_shiftState", false, [true]],
	["_ctrlState", false, [true]],
	["_altState", false, [true]]
];
_handled = false;
switch (_code) do {
	case 46:
	{
		if (_ctrlState && _shiftState) then {
			if  (isNull (uiNamespace getVariable "perseus_val_ui_activeDisplay")) then {
				createDialog "CharacterSheet";
			};
			_handled = true;
		};
	};
	case 32:
	{
		if (_ctrlState && _shiftState) then {
			if (isNull (uiNamespace getVariable "perseus_val_ui_activeDisplay")) then {
				createDialog "DogTag";
			};
			_handled = true;
		};
	};
	case 34:
	{
		if (_ctrlState && _shiftState) then {
			if (isNull (uiNamespace getVariable "perseus_val_ui_activeDisplay")) then {
				createDialog "ControlPanel";
			};
			_handled = true;
		};
	};
};
_handled;