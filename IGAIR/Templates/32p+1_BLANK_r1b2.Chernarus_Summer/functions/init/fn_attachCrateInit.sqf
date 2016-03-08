/*
Name: cnto_fnc_attachCrateInit
Author: Cody Burton
Format: [x] call cnto_fnc_attachCrateInit;
Definitions:
    x = Object, examples: 'this' or 'myBox' (without quotes)
Notes:
    - n/a
*/

private ["_box"];
_box = _this select 0;

_box allowDamage false;
clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearItemCargoGlobal _box;

_box addAction ["<t color='#ffdb00'>CompM2 Aimpoint</t>", {player addPrimaryWeaponItem "RH_compM2";}];
_box addAction ["<t color='#ffdb00'>T1 Red Dot</t>", {player addPrimaryWeaponItem "RH_t1";}];
_box addAction ["<t color='#ffdb00'>Eotech Holo</t>", {player addPrimaryWeaponItem "RH_eotexps3";}];
_box addAction ["<t color='#ff0000'>Remove Attachment</t>", {removeAllPrimaryWeaponItems player;player addPrimaryWeaponItem "RH_SFM952V";}];