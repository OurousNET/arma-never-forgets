disableSerialization;
params [
	["_map", controlNull, [controlNull]]
];

waitUntil {
	isNull uiNamespace getVariable perseus_val_ui_activeDisplay;
};

/*
_control ctrlAddEventHandler ["MouseMoving",{
   params [
      ["_mapCtrl",controlNull,[[[controlNull]]]],
      ["_xPos",-1,[0]],
      ["_yPos",-1,[0]],
      ["_mouseIn",false,[[[true]]]]
   ];

   if (_mouseIn) then {
      // Mouse is in control area
      _mapCtrl ctrlMapCursor ["","Track"];
   } else {
      // Mouse is out of control area, goes back to arrow
      _mapCtrl ctrlMapCursor ["","Arrow"];
   };
}];
*/