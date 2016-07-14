waitUntil {!isNull player};

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
_unit forceAddUniform "rhs_uniform_msv_emr";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_Flashlight_KSF1";
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};
_unit addItemToUniform "Chemlight_blue";
_unit addVest "rhs_6b23_6sh92_radio";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_100Rnd_762x54mmR";};
_unit addBackpack "rhs_assault_umbts";
_unit addItemToBackpack "UK3CB_BAF_HMNVS";
_unit addItemToBackpack "rhs_fieldcap_helm_digi";
_unit addItemToBackpack "rhs_balaclava";
_unit addItemToBackpack "ACE_microDAGR";
_unit addItemToBackpack "ACE_MapTools";
_unit addItemToBackpack "ACE_tourniquet";
_unit addItemToBackpack "ACE_epinephrine";
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_CableTie";};
_unit addItemToBackpack "ACE_IR_Strobe_Item";
for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
_unit addItemToBackpack "rhs_100Rnd_762x54mmR_green";
_unit addHeadgear "rhs_6b27m_digi_ess";

comment "Add weapons";
_unit addWeapon "rhs_weap_pkm";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak";
_unit linkItem "ItemGPS";
