/*
Name: cody_fnc_unitInit
Author: Cody Burton
Format: [x] call cody_fnc_unitInit;
Definitions:
    x = unit, examples: 'this' or 'player' (without quotes)
Notes:
    - n/a
*/

private ["_unit"/*,"_unitRole"*/];
_unit = _this select 0;
//_unitRole = _this select 1;

removeHeadgear _unit;
removeVest _unit;
removeBackpack _unit;
//removeUniform _unit;
removeAllWeapons _unit;
removeAllAssignedItems _unit;