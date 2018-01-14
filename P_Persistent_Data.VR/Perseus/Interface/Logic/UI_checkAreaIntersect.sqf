disableSerialization;
params [
	["_area", [0, 0, 0, 0], [[]], 4],
	["_point", [0, 0], [[]], 2]
];
_l = _area select 0;
_r = _l + (_area select 2);
_t = _area select 1;
_b = _t + (_area select 3);
_px = _point select 0;
_py = _point select 1;
//return
(_l <= _px) && (_px <= _r) && (_t <= _py) && (_py <= _b);