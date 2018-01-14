_player = _this select 0;
_didJIP = _this select 1;
_uid = getPlayerUID _player;
_netid = _player call BIS_fnc_netId;

[_player, _uid, _netid] call Perseus_fnc_Server_SendPlayer_PD; //This will check if this player UID exists in the Database and if it exists it will load. If it doesnt exist it will load a set of defaults
