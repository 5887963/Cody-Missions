waitUntil {!isNull player};

	#include "getGear.sqf";

	removebackpack _unit;
	removeheadgear _unit;
	removeAllAssignedItems _unit;
	removeallweapons _unit;
	removevest _unit;

	_unit addUniform (_uniform call BIS_fnc_selectRandom);
	_unit addvest _vest;
	_unit addheadgear _helmet;
	
	_unit addmagazineGlobal _carbinemag;
	_unit addweapon _carbine;
	_unit addPrimaryWeaponItem _carbine_attach;
	_unit addPrimaryWeaponItem _carbine_attach2;
	_unit additem "ItemCompass";
	_unit assignitem "itemcompass";
	_unit additem "itemmap";
	_unit assignitem "itemmap";
	_unit additem "itemwatch";
	_unit assignitem "itemwatch";
	
	_unit addItemToUniform _bandages;
	_unit addItemToUniform _bandages;
	_unit addItemToUniform _bandages;
	_unit addItemToUniform _bandages;
	_unit addItemToUniform _bandages;
	_unit addItemToUniform _bandages;
	_unit addItemToUniform _bandages;
	_unit addItemToUniform _bandages;
	_unit addItemToUniform _bandages;
	_unit addItemToUniform _bandages;
	_unit addItemToUniform _morphine;
	_unit addItemToUniform _morphine;
	_unit addItemToUniform _grenade;
	_unit addItemToUniform _grenade;
	_unit addItemToUniform _grenade;
	_unit addItemToUniform _grenade;
	_unit addItemToUniform "ItemRadio";
	
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag_tr;
	_unit addItemToVest _carbinemag_tr;
	_unit addItemToVest _smokegrenade;
	_unit addItemToVest _smokegrenade;
	_unit addItemToVest _smokegrenade;
	_unit addItemToVest _smokegrenade;
	_unit addItemToVest _smokegrenade;
	_unit addItemToVest _smokegrenade;
	_unit addItemToVest _smokegrenade;
	
if(true) exitWith{};