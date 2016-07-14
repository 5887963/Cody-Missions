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
_unit addItemToUniform "UK3CB_BAF_G_Tactical_Clear";
_unit addItemToUniform "ACE_microDAGR";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};
_unit addItemToUniform "Chemlight_blue";
_unit addVest "UK3CB_BAF_V_Osprey_Rifleman_E";
_unit addItemToVest "UK3CB_BAF_H_Beret_RM_Recruit";
_unit addItemToVest "RKSL_optic_LDS";
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
_unit addHeadgear "UK3CB_BAF_H_Mk7_Camo_B";

comment "Add weapons";
_unit addWeapon "UK3CB_BAF_L85A2";
_unit addPrimaryWeaponItem "UK3CB_BAF_BFA_L85";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_rf7800str";
_unit linkItem "ItemGPS";
