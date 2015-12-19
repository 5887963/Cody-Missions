//cnrf mcc loadout

private ["_unit"];
_unit = _this select 0;

_unit forceAddUniform "CamoU_Black";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_elasticBandage";};
_unit addItemToUniform "ACE_tourniquet";
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addVest "AAFVest01_l_black";
_unit addItemToVest "rhs_mag_rgd5";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
for "_i" from 1 to 5 do {_unit addItemToVest "rhsusf_mag_7x45acp_MHP";};

_unit addWeapon "rhsusf_weap_m1911a1";
_unit addWeapon "Binocular";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

[_unit,"ACE_insignia_banana"] call bis_fnc_setUnitInsignia;
_unit addHeadgear "CamoH_Black";