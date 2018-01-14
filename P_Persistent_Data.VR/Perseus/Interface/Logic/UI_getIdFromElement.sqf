disableSerialization;
_ctrl = toArray str _this;
_cnt = count _ctrl -9;
for "_i" from 0 to (_cnt -1) do { _ctrl set [_i, _ctrl select (_i +9)]; };
_ctrl resize _cnt;
parseNumber (toString _ctrl);