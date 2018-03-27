disableSerialization;
params [
	["_map", controlNull, [controlNull]]
];

_map ctrlAddEventHandler ["mouseButtonClick", {
	params [
		["_map", controlNull, [controlNull]],
		"_button",
		["_xPos", 0, [0]],
		["_yPos", 0, [0]],
		["_shiftState", false, [true]],
		["_ctrlState", false, [true]],
		["_altState", false, [true]]
	];
	player setPos (_map ctrlMapScreenToWorld [_xPos, _yPos]);
	true
}];

waitUntil {
	isNull uiNamespace getVariable perseus_val_ui_activeDisplay;
};

_map ctrlRemoveAllEventHandlers "mouseButtonClick";
