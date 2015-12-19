waitUntil {!isNull player};

	#include "getGear.sqf";

	removebackpack _unit;
	removeheadgear _unit;
	removeAllAssignedItems _unit;
	removeallweapons _unit;
	removevest _unit;

	_unit addUniform _uniform;
	_unit addvest _vest;
	_unit addheadgear (_helmet call BIS_fnc_selectRandom);
	
	_unit addmagazineGlobal _carbinemag;
	_unit addweapon _carbine;
	_unit addPrimaryWeaponItem _carbine_attach;
	
	_unit addmagazineGlobal _RATmag;
	_unit addweapon _RAT;
	
	_unit addItem _shortrangeradio;			// Special equipment
	_unit assignItem _shortrangeradio;
	_unit additem "ItemCompass";
	_unit assignitem "itemcompass";
	_unit additem "itemmap";
	_unit assignitem "itemmap";
	_unit additem "itemwatch";
	_unit assignitem "itemwatch";
	
	_unit addItemToUniform _bandages;		// Uniform gear
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
	_unit addItemToUniform _morphine;
	_unit addItemToUniform _morphine;
	_unit addItemToUniform _pistolmag;
	_unit addItemToUniform _pistolmag;
	
	_unit addItemToVest _carbinemag;		// Vest gear
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag;
	_unit addItemToVest _carbinemag_tr;
	_unit addItemToVest _carbinemag_tr;
	_unit addItemToVest _carbinemag_tr;
	_unit addItemToVest _carbinemag_tr;
	_unit addItemToVest _smokegrenade;
	_unit addItemToVest _smokegrenade;
	
if(true) exitWith{};