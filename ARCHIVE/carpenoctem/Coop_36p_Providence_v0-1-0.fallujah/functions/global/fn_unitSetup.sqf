/*
Name: cnto_fnc_unitSetup
Author: Cody Burton
Format: [x,y] spawn cnto_fnc_unitSetup;
Definitions:
    x = Unit, example being 'this' or 'player' (without quotes)
    y = Role, example being "mcc" or "ftl" (it's a string, so remember the quotes!)
Notes:
	- Created to replace the F3 unitInit system in operations that do not require it.
	- WARNING: This is only to be executed once on mission start!
*/

private ["_unit","_unitRole"]; //declare variables
_unit = _this select 0;
_unitRole = _this select 1;

if (!hasInterface) exitWith {}; //check if client
if (!isDedicated && (isNull player)) then {waitUntil {sleep 0.1; !isNull player};}; //wait for initialisation

[_unit, _unitRole] spawn cnto_fnc_assignLoadout; //setup unit loadout

if (true) exitWith {}; //only exec once