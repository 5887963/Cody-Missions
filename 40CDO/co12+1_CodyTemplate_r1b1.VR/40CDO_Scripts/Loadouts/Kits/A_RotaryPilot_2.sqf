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
_unit forceAddUniform "UK3CB_BAF_U_HeliPilotCoveralls_RN";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};
_unit addItemToUniform "Chemlight_blue";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_HandFlare_White";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_HandFlare_Green";};
_unit addVest "UK3CB_BAF_V_Pilot_A";
for "_i" from 1 to 3 do {_unit addItemToVest "UK3CB_BAF_30Rnd";};
for "_i" from 1 to 3 do {_unit addItemToVest "UK3CB_BAF_17Rnd_9mm";};
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellBlue";};
_unit addBackpack "B_Kitbag_mcamo";
_unit addItemToBackpack "UK3CB_BAF_HMNVS";
_unit addItemToBackpack "UK3CB_BAF_H_Beret_RM_Bootneck";
_unit addItemToBackpack "G_Aviator";
_unit addItemToBackpack "ACE_microDAGR";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_MapTools";};
_unit addItemToBackpack "ACE_tourniquet";
_unit addItemToBackpack "ACE_morphine";
_unit addItemToBackpack "ACE_epinephrine";
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "B_IR_Grenade";};
_unit addItemToBackpack "ACE_IR_Strobe_Item";

switch (getPlayerUID _unit) do {
	case "76561197988776627": { _unit addHeadgear "CDO_BAF_H_Alpha200_Quantum"; };
	case "76561197988776627": { _unit addHeadgear "CDO_BAF_H_Alpha200_Quantum"; };
};
_unit addHeadgear "H_PilotHelmetHeli_B";

comment "Add weapons";
_unit addWeapon "UK3CB_BAF_L22A2";
_unit addPrimaryWeaponItem "RKSL_optic_LDS";
_unit addWeapon "UK3CB_BAF_L131A1";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152";
_unit linkItem "ItemcTab";
