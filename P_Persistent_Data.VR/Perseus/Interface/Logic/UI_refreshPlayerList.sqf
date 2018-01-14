disableSerialization;
params [
	["_listCtrl", controlNull, [controlNull]]
];
//_listCtrl lbAdd "Billy Bob";
//_listCtrl lbAdd "Jimmy Jones";
lbClear _listCtrl;
_players = allPlayers - entities "HeadlessClient_F";
{_listCtrl lbAdd (name _x);} forEach _players;
/*
_players = _players apply {[profileName _x, getPlayerUID _x];};
_players sort true;

_numNew = count _players;
_numOld = lbSize _listCtrl;

_remove = [];
_append = [];

if (_numNew < _numOld) then {
	for "_i" from 0 to _numOld do {
		_oldRec = [_listCtrl lbText _i, _listCtrl lbData _i];
		_newRec = _players select _i;
		switch(count (_oldRec arrayIntersect _newRec)) do {
			case 0: {_remove pushBack _i;};
			case 1: {
				//name is the same, but we sorted by that, so walk forwards and backwards
				//alternatively it could be UID but that indicates an issue out of this scope
				if 
			};
		};
	};
} else {
};
lbSort _listCtrl;
*/