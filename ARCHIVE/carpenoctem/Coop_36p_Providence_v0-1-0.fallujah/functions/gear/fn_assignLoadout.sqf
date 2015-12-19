/*
Name: cnto_fnc_assignLoadout
Author: Cody Burton
Format: [x,y] spawn cnto_fnc_assignLoadout;
Definitions:
    x = Unit, example being 'this' or 'player' (without quotes)
    y = Role, example being "mcc" or "ftl" (it's a string, so remember the quotes!)
Notes:
    - Created to replace the F3 loadout system in operations that do not require it.
    - values on init are parsed from cnto_fnc_unitSetup during startup.
*/

private ["_unit","_unitRole"];
_unit = _this select 0;
_unitRole = _this select 1;

removeHeadgear _unit;
removeVest _unit;
removeBackpack _unit;
removeUniform _unit;
removeAllWeapons _unit;
removeAllAssignedItems _unit;

switch(_unitRole) do {
	case "mcc": {[_unit] call cnto_fnc_basicLO};
	case "sl": {[_unit] call cnto_fnc_basicLO};
	case "medic": {[_unit] call cnto_fnc_basicLO};
	case "ftl": {[_unit] call cnto_fnc_basicLO};
	case "aar": {[_unit] call cnto_fnc_basicLO};
	case "ar": {[_unit] call cnto_fnc_basicLO};
	case "at": {[_unit] call cnto_fnc_basicLO};
	case "crew": {[_unit] call cnto_fnc_basicLO};
	case "gren": {[_unit] call cnto_fnc_basicLO};
	case "grenAsst": {[_unit] call cnto_fnc_basicLO};
	case "expSpec": {[_unit] call cnto_fnc_basicLO};
	case "rifle": {[_unit] call cnto_fnc_basicLO};
	default {[_unit] call cnto_fnc_basicLO};
};