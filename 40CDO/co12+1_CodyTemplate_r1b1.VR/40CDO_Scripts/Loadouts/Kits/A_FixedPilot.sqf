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
_unit forceAddUniform "FIR_Fighter_Pilot_Nomex";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};
_unit addItemToUniform "Chemlight_blue";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_HandFlare_White";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_HandFlare_Green";};
_unit addVest "FIR_pilot_vest";
_unit addItemToVest "UK3CB_BAF_L131A1";
_unit addItemToVest "UK3CB_BAF_HMNVS";
_unit addItemToVest "G_Aviator";
_unit addItemToVest "ACE_microDAGR";
_unit addItemToVest "ACE_MapTools";
_unit addItemToVest "ACE_tourniquet";
_unit addItemToVest "ACE_morphine";
_unit addItemToVest "ACE_epinephrine";
for "_i" from 1 to 8 do {_unit addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_quikclot";};
_unit addItemToVest "B_IR_Grenade";
for "_i" from 1 to 3 do {_unit addItemToVest "UK3CB_BAF_17Rnd_9mm";};
_unit addItemToVest "ACE_IR_Strobe_Item";
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellBlue";};
_unit addBackpack "ACE_NonSteerableParachute";
_unit addHeadgear "FIR_USHelmetType1_Black_Open";

comment "Add weapons";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152";
_unit linkItem "ItemcTab";
