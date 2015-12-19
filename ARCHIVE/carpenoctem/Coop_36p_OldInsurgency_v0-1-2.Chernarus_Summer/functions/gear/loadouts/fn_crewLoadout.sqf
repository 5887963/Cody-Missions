// cnrf crewman loadout

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
_x addVest "rhs_vydra_3m";
for "_i" from 1 to 8 do {_x addItemToVest "rhs_30Rnd_762x39mm";};

_x addWeapon "rhs_weap_akms";
_x addWeapon "rhsusf_weap_m1911a1";
_x addWeapon "Binocular";

_x linkItem "ItemMap";
_x linkItem "ItemCompass";
_x linkItem "ItemWatch";
_x addHeadgear "rhs_tsh4";