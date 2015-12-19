/*
Name: cnto_fnc_setupMunitionsBox
Author: Cody Burton
Format: [x] call cnto_fnc_setupMunitionsBox;
Definitions:
    x = Object, examples: 'this' or 'myBox' (without quotes)
Notes:
    - Use the arrays below to specify what you want to be available in the box, usage: [item_classname,amount]
*/

private ["_box","_Weapons","_Ammo","_Backpacks","_Items"];
_box = _this select 0;

_box allowDamage false;
clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearItemCargoGlobal _box;

_Weapons = [
	["rhs_weap_rpk74",12],
	["rhs_weap_rpg7",6]
];
_Ammo = [
	["rhs_45Rnd_545X39_AK",28],
	["rhs_rpg7_PG7VL_mag",14],
	["rhs_mag_rgd5",15],
	["rhs_mag_rdg2_white",25],
	["IEDUrbanBig_Remote_Mag",4]
];
_Backpacks = [
	["TRYK_B_Alicepack",4]
];
_Items = [
	["ACE_wirecutter",2],
	["ACE_Cellphone",4],
	["ACE_Banana",10] //chris was here
];

{_box addWeaponCargoGlobal _x} forEach _Weapons;
{_box addMagazineCargoGlobal _x} forEach _Ammo;
{_box addBackpackCargoGlobal _x} forEach _Backpacks;
{_box addItemCargoGlobal _x} forEach _Items;