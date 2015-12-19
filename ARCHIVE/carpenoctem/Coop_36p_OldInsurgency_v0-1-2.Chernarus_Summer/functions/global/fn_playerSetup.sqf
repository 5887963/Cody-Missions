/*
Name: cnto_fnc_playerSetup
Author: Cody Burton
Format: [x,y] spawn cnto_fnc_playerSetup;
Definitions:
    x = Unit, example being 'this' or 'player' (without quotes)
    y = Role, example being "mcc" or "ftl" (it's a string, so remember the quotes!)
Notes:
	- Created to replace the F3 playerSpawn system in operations that do not require it.
	- This will also be used as a JIP handler for use with my system
*/

if (!hasInterface) exitWith {}; //check if client
if (!isDedicated && (isNull player)) then {waitUntil {sleep 0.1; !isNull player};}; //wait for initialisation

private ["_unit","_unitRole"]; //declare variables
_unit = _this select 0;
_unitRole = _this select 1;

if (isNil "_unit") exitWith {}; //exit if player is JIP with no respawns available

[_unit, _unitRole] spawn cnto_fnc_assignLoadout; //setup player loadout

cnto_var_playerSetup_unitRole = _unitRole;

player addEventHandler ["respawn",{[player, cnto_var_playerSetup_unitRole] spawn cnto_fnc_assignLoadout}] //add event on respawn