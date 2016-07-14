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
_unit forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "ACE_epinephrine";
_unit addItemToUniform "ACE_tourniquet";
_unit addVest "UK3CB_BAF_V_Pilot_A";
for "_i" from 1 to 2 do {_unit addItemToVest "CDO_BAF_Magazine_L84A2";};
_unit addBackpack "UK3CB_BAF_B_Bergen_MTP_JTAC_L_A";
_unit addItemToBackpack "rhsusf_ANPVS_15";
_unit addItemToBackpack "CDO_BAF_H_Alpha200_Leeds";
_unit addItemToBackpack "G_Aviator";
_unit addItemToBackpack "ACE_microDAGR";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_MapTools";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_green";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_blue";};
_unit addItemToBackpack "ACE_IR_Strobe_Item";
_unit addItemToBackpack "CDO_BAF_Magazine_L71A1";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_HandFlare_Green";};
_unit addItemToVest "CDO_BAF_Item_MedevacCard";
_unit addItemToVest "CDO_BAF_Item_CCACard";
_unit addItemToVest "CDO_BAF_Item_HLSCard";
_unit addHeadgear "UK3CB_BAF_H_Headset_PRR";

comment "Add weapons";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152";
_unit linkItem "ItemcTab";
