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
_unit addVest "UK3CB_BAF_V_Osprey_Rifleman_E";
for "_i" from 1 to 6 do {_unit addItemToVest "UK3CB_BAF_30Rnd";};
for "_i" from 1 to 2 do {_unit addItemToVest "UK3CB_BAF_30Rnd_T";};
for "_i" from 1 to 2 do {_unit addItemToVest "UK3CB_BAF_17Rnd_9mm";};
_unit addBackpack "B_Carryall_mcamo";
_unit addItemToBackpack "UK3CB_BAF_HMNVS";
_unit addItemToBackpack "UK3CB_BAF_H_Beret_RM_Bootneck_PRR";
_unit addItemToBackpack "UK3CB_BAF_G_Tactical_Clear";
_unit addItemToBackpack "UK3CB_BAF_Javelin_CLU";
_unit addItemToBackpack "ACE_microDAGR";
_unit addItemToBackpack "ACE_MapTools";
_unit addItemToBackpack "ACE_tourniquet";
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_CableTie";};
_unit addItemToBackpack "ACE_IR_Strobe_Item";
for "_i" from 1 to 4 do {_unit addItemToBackpack "SmokeShell";};
_unit addItemToBackpack "SmokeShellGreen";
_unit addHeadgear "UK3CB_BAF_H_Mk7_Scrim_F";

comment "Add weapons";
_unit addWeapon "UK3CB_BAF_L85A2_RIS";
_unit addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Tan";
_unit addPrimaryWeaponItem "RKSL_optic_LDS";
_unit addWeapon "UK3CB_BAF_Javelin_Slung_Tube";
_unit addWeapon "UK3CB_BAF_L131A1";
_unit addHandgunItem "UK3CB_BAF_Flashlight_L131A1";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_rf7800str";
_unit linkItem "ItemGPS";