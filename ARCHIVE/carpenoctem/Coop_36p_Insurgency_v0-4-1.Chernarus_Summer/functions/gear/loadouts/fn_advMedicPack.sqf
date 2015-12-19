// add medical backpack to unit

private ["_unit"];
_unit = _this select 0;

_unit addBackpack "TRYK_B_Alicepack";
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_atropine";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_surgicalKit";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bloodIV_500";};