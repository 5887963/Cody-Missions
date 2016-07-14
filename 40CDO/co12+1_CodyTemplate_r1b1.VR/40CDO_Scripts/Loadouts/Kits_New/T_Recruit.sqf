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
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "ACE_tourniquet";
_unit addItemToUniform "ACE_microDAGR";
_unit addItemToUniform "ACE_MapTools";
_unit addVest "UK3CB_BAF_V_Osprey_Rifleman_E";
_unit addItemToVest "UK3CB_BAF_H_Beret_RM_Recruit";
_unit addHeadgear "STKR_MK7";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_rf7800str";
_unit linkItem "ItemGPS";
