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
_unit addItemToUniform "CDO_BAF_Item_PRC354";
_unit addVest "UK3CB_BAF_V_Osprey_Rifleman_D";
for "_i" from 1 to 6 do {_unit addItemToVest "CDO_BAF_Magazine_L84A2";};
_unit addItemToVest "ACE_DefusalKit";
_unit addItemToVest "ACE_EntrenchingTool";
_unit addBackpack "UK3CB_BAF_B_Bergen_MTP_SL_L_A";
_unit addItemToBackpack "UK3CB_BAF_HMNVS";
_unit addItemToBackpack "UK3CB_BAF_H_Beret_RM_Bootneck_PRR";
_unit addItemToBackpack "MineDetector";
_unit addItemToBackpack "ACE_microDAGR";
_unit addItemToBackpack "ACE_MapTools";
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_CableTie";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_green";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_blue";};
_unit addItemToBackpack "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {_unit addItemToBackpack "CDO_BAF_Magazine_L71A1";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "CDO_BAF_Magazine_L70A1";};
_unit addItemToBackpack "CDO_BAF_Magazine_L72A1";
_unit addHeadgear "UK3CB_BAF_H_Mk7_Camo_CESS_B";

comment "Add weapons";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_rf7800str";
_unit linkItem "ItemGPS";
