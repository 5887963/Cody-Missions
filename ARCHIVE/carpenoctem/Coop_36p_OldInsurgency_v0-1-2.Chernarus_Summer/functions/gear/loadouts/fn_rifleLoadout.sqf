// cnrf rifleman loadout

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

_x addWeapon "rhs_weap_akm";

_x linkItem "ItemMap";
_x linkItem "ItemCompass";
_x linkItem "ItemWatch";
_x addHeadgear "CamoH_Green";