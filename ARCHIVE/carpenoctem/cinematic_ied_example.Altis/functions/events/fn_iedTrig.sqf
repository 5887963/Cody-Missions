private ["_iedName","_iedType","_iedPos","_carArray","_unitArray"];

_iedName = _this select 0;
_iedType = _this select 1;
_iedPos = getpos _iedName;

_carArray = nearestObjects [_iedName,["car","truck","tank"],150];
_unitArray = {crew _x;} foreach _carArray;

iedPre = {_x allowDamage false;} foreach _unitArray; {_x allowDamage false;} foreach _carArray;
iedExp = _iedType createVehicle _iedPos; deletevehicle _iedName; sleep 0.1; {_x allowDamage true;} foreach _carArray; sleep 0.1; {_x setHit ["motor", 1];_x setHit ["wheel_1_1_steering", 1]; _x setHit ["wheel_1_2_steering", 1]; _x setHit ["wheel_2_1_steering", 1]; _x setHit ["wheel_2_2_steering", 1];} foreach _carArray;
iedPost = {_x allowDamage true;_x setDamage (random 0.9);} foreach _unitArray;

hint "exec fn_iedTrig.sqf";