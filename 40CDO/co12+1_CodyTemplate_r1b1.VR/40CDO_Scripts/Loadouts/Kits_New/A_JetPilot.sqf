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
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "ACE_epinephrine";
_unit addItemToUniform "ACE_tourniquet";
_unit addVest "FIR_pilot_vest";
for "_i" from 1 to 2 do {_unit addItemToVest "CDO_BAF_Magazine_L84A2";};
_unit addItemToVest "CDO_BAF_Magazine_L71A1";
_unit addItemToVest "rhsusf_ANPVS_15";
_unit addItemToVest "G_Aviator";
_unit addItemToVest "ACE_microDAGR";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_MapTools";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_green";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
_unit addItemToVest "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_HandFlare_Green";};
_unit addBackpack "ACE_NonSteerableParachute";
_unit addHeadgear "FIR_USHelmetType1_Navy_Black_Open";

comment "Add weapons";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152";
_unit linkItem "ItemcTab";
