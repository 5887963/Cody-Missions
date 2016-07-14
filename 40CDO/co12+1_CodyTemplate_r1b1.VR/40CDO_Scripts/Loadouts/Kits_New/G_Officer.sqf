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
_unit addVest "rhsusf_spcs_ocp_rifleman";
for "_i" from 1 to 6 do {_unit addItemToVest "CDO_BAF_Magazine_L84A2";};
_unit addBackpack "UK3CB_BAF_B_Bergen_MTP_SL_L_A";
_unit addItemToBackpack "ACE_Vector";
_unit addItemToBackpack "UK3CB_BAF_HMNVS";
_unit addItemToBackpack "UK3CB_BAF_H_Beret_RM_Officer_PRR";
_unit addItemToBackpack "ItemcTabHCam";
_unit addItemToBackpack "ACE_microDAGR";
_unit addItemToBackpack "ACE_MapTools";
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_CableTie";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_green";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "CDO_BAF_Magazine_L71A1";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "CDO_BAF_Magazine_L70A1";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "CDO_BAF_Magazine_L72A1";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "CDO_BAF_Magazine_L75A2";};
_unit addItemToBackpack "ACE_IR_Strobe_Item";
_unit addItemToBackpack "CDO_BAF_Item_ContactCard";
_unit addItemToBackpack "CDO_BAF_Item_ECASCard";
_unit addItemToBackpack "CDO_BAF_Item_PAWPERSOCard";
_unit addItemToBackpack "CDO_BAF_Item_PACESDOCard";
_unit addItemToBackpack "CDO_BAF_Item_MedevacCard";
_unit addItemToBackpack "CDO_BAF_Item_CCACard";
_unit addItemToBackpack "CDO_BAF_Item_HLSCard";
_unit addHeadgear "STKR_MK7";

comment "Add weapons";
_unit addWeapon "Rangefinder";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_rf7800str";
_unit linkItem "ItemcTab";
	