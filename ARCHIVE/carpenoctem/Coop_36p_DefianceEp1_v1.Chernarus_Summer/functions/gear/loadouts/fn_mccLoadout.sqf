//cnrf mcc loadout

private ["_x"];
_x = _this select 0;

_x forceAddUniform "rhs_uniform_m88_patchless";
_x addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 5 do {_x addItemToUniform "ACE_Banana";};
_x addItemToUniform "ACE_MapTools";
_x addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_x addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 4 do {_x addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_x addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_x addItemToUniform "rhsusf_mag_7x45acp_MHP";};
_x addBackpack "B_AssaultPack_dgtl";
_x addItemToBackpack "ACRE_PRC117F";

_x addWeapon "rhsusf_weap_m1911a1";
_x addWeapon "Binocular";

_x linkItem "ItemMap";
_x linkItem "ItemCompass";
_x linkItem "ItemWatch";
_x linkItem "ItemGPS";

[_x,"ACE_insignia_banana"] call bis_fnc_setUnitInsignia;
_x addHeadgear "TRYK_H_PASGT_TAN";