/*
Name: cnto_fnc_assignLoadout
Author: Cody Burton
Format: [x,y] spawn cnto_fnc_assignLoadout;
Definitions:
    x = Unit, example being 'this' or 'player' (without quotes)
    y = Role, example being "mcc" or "ftl" (it's a string, so remember the quotes!)
Notes:
    - Created to replace the F3 loadout system in operations that do not require it.
    - 'y' value is parsed from cnto_fnc_playerSetup during player startup.
*/

private ["_targ","_targLoadout"];
_targ = _this select 0;
_targLoadout = _this select 1;

removeHeadgear _targ;
removeVest _targ;
removeBackpack _targ;
removeUniform _targ;
removeAllWeapons _targ;
removeAllAssignedItems _targ;

switch(_targLoadout) do {
    case "mcc": {[_targ] spawn cnto_fnc_mccLoadout};
    case "sl": {[_targ] spawn cnto_fnc_slLoadout};
    case "medic": {[_targ] spawn cnto_fnc_medicLoadout};
    case "ftl": {[_targ] spawn cnto_fnc_ftlLoadout};
    case "aar": {[_targ] spawn cnto_fnc_aarLoadout};
    case "ar": {[_targ] spawn cnto_fnc_arLoadout};
    case "at": {[_targ] spawn cnto_fnc_atLoadout};
    case "rifle": {[_targ] spawn cnto_fnc_rifleLoadout};
    case "crew": {[_targ] spawn cnto_fnc_crewLoadout};
    case "gren": {[_targ] spawn cnto_fnc_grenLoadout};
    case "grenAsst": {[_targ] spawn cnto_fnc_grenAsstLoadout};
    case "expSpec": {[_targ] spawn cnto_fnc_expSpecLoadout};
};