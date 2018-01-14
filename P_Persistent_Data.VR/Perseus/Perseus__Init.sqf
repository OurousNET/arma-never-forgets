// Default Mission Settings for Perseus
//Enables Debug Mode for ExtDB and Perseus
DEBUGMODE = true;

#include "Perseus__SETTINGS.sqf"

//DETECT TFAR and Load Settings Script
if(isClass (configfile >> "task_force_radio_settings")) then {
	#include "perseus__init_TFAR.sqf"
	};
//END TFAR

If(IsServer) then {
//	["Perseus","SQL_RAW_V2","Perseus.ini"] call Perseus_fnc_ExtDB2_init;
["Perseus","SQL_CUSTOM_V2","Perseus"] call Perseus_fnc_ExtDB2_init;
	};


//Interfaces Initialization	
//perseus_val_originalPlayerAttributes = [0, 0, 0, 0, 0, 0];
//LAST_ATTRIBUTES_FROM_SERVER = [0, 0, 0, 0, 0, 0];
perseus_val_currentPlayerAttributes = objNull;
perseus_val_possiblePlayerAttributes = objNull;
perseus_val_playerAttributeInfo = 	[100, 	
									["Physical Training", "This skill will increase your characters Endurance, Strength and Movement speed"],
									["Stealth", "This skill will make it more difficult for enemy (AI) to detect your movements"],
									["Marksmanship", "This skill your character becomes adept at absorbing weapon recoil"],
									["Hacking", "Increasing your hacking ability will accelerate hacking of systems as well as allow you to invade more secure systems. Also increases capture speeds"],
									["Radio Operator", "This attribute increases your tuning of radios, increasing the range of your radio communications (TFAR)"]
									];
uiNamespace setVariable ["perseus_val_ui_activeDisplay", displayNull];
//Initialize Interface Requirements
[] spawn {
	waitUntil {!isNull findDisplay 46};
	(findDisplay 46) displayAddEventHandler ["KeyDown", perseus_fnc_ui_genericKeyHandler];
};