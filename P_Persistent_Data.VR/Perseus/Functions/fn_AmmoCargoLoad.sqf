/*
	Name:			Perseus_fnc_AmmoCargoLoad
	Author:			OzDeaDMeaT
	Description:	Loads magazines into crates or Vehicles
	Must spawn:		NO
    Usage Example:	[<Object2Load>,[[AmmoName],[Quantity]]] call Perseus_fnc_AmmoCargoLoad
	
	Parameters:
        Index				Type				Variable				Notes
		0					OBJECT				_crate					Object to add magazine cargo to
		1					ARRAY										[CLASSNAME,AMOUNT]
		
    Return:
							BOOL				true					Returns true when function is complete
*/
private["_crate","_arr1","_arr2","_count","_i"];
	_crate = _this select 0; //Object ClassNames are being loaded into
	_arr1 = (_this select 1) select 0; //ClassName
	_arr2 = (_this select 1) select 1; //Amount
	_count = count _arr1;
	for "_i" from 0 to (_count - 1) do {
		_crate addMagazineCargoGlobal [(_arr1 select _i),(_arr2 select _i)];
	};
true