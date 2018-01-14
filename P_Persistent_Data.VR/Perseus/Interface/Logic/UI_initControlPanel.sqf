disableSerialization;
params [
	["_disp", displayNull, [displayNull]]
];
//init display
uiNamespace setVariable ["perseus_val_ui_activeDisplay", _disp];
//init buttons

hint format["%1", count (allControls _disp)];

//important controls
_mapCtrl = _disp displayCtrl 101;
_listCtrl = _disp displayCtrl 100;

_listCtrl call perseus_fnc_ui_refreshPlayerList;

/*
["perseus_fnc_ui_refreshPlayerList@onPlayerConnected", "onPlayerConnected", {
	call perseus_fnc_ui_refreshPlayerList;
}] call BIS_fnc_addStackedEventHandler;
["perseus_fnc_ui_refreshPlayerList@onPlayerDisconnected", "onPlayerDisconnected", {
	call perseus_fnc_ui_refreshPlayerList;
}] call BIS_fnc_addStackedEventHandler;
*/
waitUntil { isNull (uiNamespace getVariable "perseus_val_ui_activeDisplay"); };
/*
["perseus_fnc_ui_refreshPlayerList@onPlayerConnected", "onPlayerConnected"] call BIS_fnc_removeStackedEventHandler;
["perseus_fnc_ui_refreshPlayerList@onPlayerDisconnected", "onPlayerDisconnected"] call BIS_fnc_removeStackedEventHandler;
*/