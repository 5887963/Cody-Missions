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
_unit addVest "rhs_6b23_digi_medic";
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_545x39_AK";};
_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_9x19_17";};
_unit addBackpack "rhs_assault_umbts";
_unit addItemToBackpack "UK3CB_BAF_HMNVS";
_unit addItemToBackpack "rhs_fieldcap_helm_digi";
_unit addItemToBackpack "rhs_balaclava";
_unit addItemToBackpack "ACE_microDAGR";
_unit addItemToBackpack "ACE_MapTools";
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 18 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 18 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_atropine";};
for "_i" from 1 to 25 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 25 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_personalAidKit";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_CableTie";};
_unit addHeadgear "rhs_6b27m_digi";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m_2mag";
_unit addPrimaryWeaponItem "rhs_acc_1p29";
_unit addWeapon "rhs_weap_pya";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak";
_unit linkItem "ItemGPS";
