// cnto_fnc_medicLoadout

private ["_x"];
_x = _this select 0;

_x forceAddUniform "U_CAF_AG_EEUR_FATIGUES_02";
_x addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 5 do {_x addItemToUniform "ACE_fieldDressing";};
_x addItemToUniform "rhs_mag_rgd5";
_x addVest "rhs_6sh92";
for "_i" from 1 to 3 do {_x addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_x addItemToVest "ACE_morphine";};
for "_i" from 1 to 10 do {_x addItemToVest "rhs_30Rnd_762x39mm";};
_x addBackpack "TRYK_B_Alicepack";
for "_i" from 1 to 30 do {_x addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 15 do {_x addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 15 do {_x addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {_x addItemToBackpack "ACE_bloodIV_250";};
for "_i" from 1 to 10 do {_x addItemToBackpack "ACE_EarPlugs";};
for "_i" from 1 to 10 do {_x addItemToBackpack "ACE_CableTie";};
_x addWeapon "rhs_weap_akms";

_x linkItem "ItemMap";
_x linkItem "ItemCompass";
_x linkItem "ItemWatch";
_x addHeadgear "CamoH_Green";