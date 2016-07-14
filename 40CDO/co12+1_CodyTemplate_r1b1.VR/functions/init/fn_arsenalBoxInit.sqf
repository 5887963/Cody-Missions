/*
Name: cody_fnc_arsenalBoxInit
Author: Cody Burton
Format: [x] call cody_fnc_arsenalBoxInit;
Definitions:
    x = Object, examples: 'this' or 'myBox' (without quotes)
Notes:
    - n/a
*/

private ["_box"/*,"_arsenalAction"*/];
_box = _this select 0;

_box allowDamage false;
clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearItemCargoGlobal _box;

//_arsenalAction = _box addaction ["<t color='#ffff00'>Arsenal</t>",{[player,true] call BIS_fnc_arsenal;}]

// 40Cdo - Section Kits
_distance = 4;

_box addAction ["[Section] Section Commander", "script\kits\H_SectionIC.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Section] Section 2IC", "script\kits\H_Section2IC.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Section] Rifleman", "script\kits\H_Rifleman.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Section] AT Rifleman", "script\kits\H_AT_Rifleman.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Section] Grenadier", "script\kits\H_Grenadier.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Section] Marksman", "script\kits\H_Marksman.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Section] Gunner", "script\kits\H_Gunner.sqf", [], 1, false, true, "", "_this distance _target < 4"];