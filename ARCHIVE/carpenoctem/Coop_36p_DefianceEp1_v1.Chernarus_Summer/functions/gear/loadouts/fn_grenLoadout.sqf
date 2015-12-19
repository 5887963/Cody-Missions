// cnrf grenadier loadout

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
_x addBackpack "B_AssaultPack_dgtl";
_x addItemToBackpack "ACE_MapTools";
_x addItemToBackpack "ACE_wirecutter";
_x addItemToBackpack "ACE_Banana";
for "_i" from 1 to 2 do {_x addItemToBackpack "ACE_CableTie";};
for "_i" from 1 to 8 do {_x addItemToBackpack "rhs_VOG25";};
for "_i" from 1 to 4 do {_x addItemToBackpack "rhs_VG40OP_white";};
for "_i" from 1 to 2 do {_x addItemToBackpack "rhs_GRD40_White";};

_x addWeapon "rhs_weap_akms_gp25";

_x linkItem "ItemMap";
_x linkItem "ItemCompass";
_x linkItem "ItemWatch";
_x addHeadgear "CamoH_Green";