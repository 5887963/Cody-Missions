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
_unit forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP_TShirt";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "ACE_tourniquet";
_unit addVest "FIR_SaftyVest_Orange";
_unit addItemToVest "UK3CB_BAF_HMNVS";
_unit addItemToVest "G_Aviator";
_unit addItemToVest "ACE_microDAGR";
_unit addItemToVest "ACE_MapTools";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_HandFlare_Green";};
_unit addItemToVest "ACE_IR_Strobe_Item";
_unit addHeadgear "H_Cap_headphones";

comment "Add weapons";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152";
_unit linkItem "ItemcTab";
