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
_unit forceAddUniform "CDO_BAF_U_MedicUniform_MTP_SS_RM";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_Flashlight_MX991";
_unit addItemToUniform "tf_anprc152";
_unit addVest "UK3CB_BAF_V_Osprey_Medic_C";
for "_i" from 1 to 2 do {_unit addItemToVest "CDO_BAF_Magazine_L84A2";};
_unit addBackpack "UK3CB_BAF_B_Bergen_MTP_Medic_H_A";
_unit addItemToBackpack "UK3CB_BAF_HMNVS";
_unit addItemToBackpack "UK3CB_BAF_H_Beret_RM_Bootneck_PRR";
_unit addItemToBackpack "ACE_microDAGR";
_unit addItemToBackpack "ACE_MapTools";
for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_personalAidKit";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_atropine";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_CableTie";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_green";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_blue";};
_unit addHeadgear "STKR_MK7";

comment "Add weapons";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_rf7800str";
_unit linkItem "ItemGPS";
