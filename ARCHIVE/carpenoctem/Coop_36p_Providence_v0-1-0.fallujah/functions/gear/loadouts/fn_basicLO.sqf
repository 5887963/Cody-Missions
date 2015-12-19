// cnrf rifleman loadout

private ["_unit"];
_unit = _this select 0;

_unit forceAddUniform "TRYK_U_B_BLK_TAN_1";
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_epinephrine";};
_unit addItemToUniform "ACE_Banana";
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_microDAGR";
_unit addItemToUniform "ACE_DefusalKit";
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
_unit addVest "TRYK_V_tacv1LMSL_BK";
_unit addItemToVest "ACRE_PRC343";
for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_9x18_12_57N181S";};
for "_i" from 1 to 3 do {_unit addItemToVest "SUPER_flash";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 4 do {_unit addItemToVest "Chemlight_yellow";};

_unit addWeapon "rhs_weap_makarov_pmm";
_unit addWeapon "ACE_Vector";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";
_unit addHeadgear "CamoH_Atacs";