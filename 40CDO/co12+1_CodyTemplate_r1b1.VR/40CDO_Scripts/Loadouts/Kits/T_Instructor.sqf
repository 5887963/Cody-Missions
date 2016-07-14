_unit = _this select 1;

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM";
_unit addItemToUniform "tf_anprc152";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};
_unit addItemToUniform "Chemlight_blue";
_unit addBackpack "B_AssaultPack_mcamo";
_unit addItemToBackpack "UK3CB_BAF_G_Tactical_Clear";
_unit addItemToBackpack "ItemcTabHCam";
_unit addItemToBackpack "ACE_microDAGR";
_unit addItemToBackpack "ACE_MapTools";
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellRed";};
_unit addHeadgear "UK3CB_BAF_H_Beret_RM_Bootneck";

comment "Add weapons";
_unit addWeapon "Rangefinder";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_rf7800str";
_unit linkItem "ItemAndroid";

