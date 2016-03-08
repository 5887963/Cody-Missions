// F3 - Buddy Team Colours
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// MAKE SURE THE PLAYER INITIALIZES PROPERLY

if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// ====================================================================================

// DECLARE PRIVATE VARIABLES

private ["_unit","_isFireteam","_white","_red","_blue","_yellow","_green"];

// ====================================================================================

// SET CUSTOM VARIABLES
// These variables govern the behaviour of the script

// Colors will be set for groups of leaders with these suffixes
_leaders = ["_FTL"];

// Set suffixes for each color
_white = [];
_red = ["_AT1","_AR1","_AAR1"];
_blue = ["_AT3","_AR3","_AAR2"];
_yellow = ["_AT2","_AR2"];
_green = ["_AT4","_AR4"];

// ====================================================================================

// WAIT UNTIL 10 SECONDS AFTER INITIALIZING

sleep 10;

_unit = player;
_isFireteam = false;

// ====================================================================================

// CHECK GROUP SIZE
// If the group isn't a full fireteam, leave teams as default.

{
	if ([_x, format["%1",(leader (group _unit))]] call BIS_fnc_inString) exitWith {_isFireteam = true;}
} forEach _leaders;

if(!_isFireteam) exitWith {};

// SET TEAM COLOURS
{
	private ["_unit"];
	_unit = _x;

	{
		if ([_x, format ["%1",_unit]] call BIS_fnc_inString) then {
			_unit assignTeam "RED";
		};
	} forEach _red;

	{
		if ([_x, format ["%1",_unit]] call BIS_fnc_inString) then {
			_unit assignTeam "blue";
		};
	} forEach _blue;

	{
		if ([_x, format ["%1",_unit]] call BIS_fnc_inString) then {
			_unit assignTeam "yellow";
		};
	} forEach _yellow;

	{
		if ([_x, format ["%1",_unit]] call BIS_fnc_inString) then {
			_unit assignTeam "green";
		};
	} forEach _green;

	{
		if ([_x, format ["%1",_unit]] call BIS_fnc_inString) then {
			_unit assignTeam "white";
		};
	} forEach _white;

} foreach units (group _unit);