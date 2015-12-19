waitUntil {!isNull player};

	#include "getGear.sqf";

	removebackpack _unit;
	removeheadgear _unit;
	removeAllAssignedItems _unit;
	removeallweapons _unit;
	removevest _unit;

	_unit addUniform _pilotUniform;
	_unit addvest _pilotRig;
	_unit addheadgear _pilotHelmet;
	
	_unit addmagazineGlobal _smgmag;
	_unit addweapon _smg;

	_unit addMagazineGlobal _pistolmag;
	_unit addweapon _pistol;
	
	_unit addItem _mediumrangeradio;
	_unit assignItem _mediumrangeradio;
	_unit addWeapon _vector;
	_unit additem "ItemCompass";
	_unit assignitem "itemcompass";
	_unit additem "itemmap";
	_unit assignitem "itemmap";
	_unit additem "itemwatch";
	_unit assignitem "itemwatch";
	_unit addItem "ItemGPS";
	_unit assignItem "ItemGPS";
	_unit linkItem _nvgwide;
	
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
	
	_unit addItemToVest _smgmag;			// Vest gear
	_unit addItemToVest _smgmag;
	_unit addItemToVest _smgmag;
	_unit addItemToVest _smgmag;
	_unit addItemToVest _smgmag;
	_unit addItemToVest _smgmag;
	_unit addItemToVest _smgmag;
	_unit addItemToVest _smokegrenade;
	_unit addItemToVest _smokegrenade;
	_unit addItemToVest _smokegrenade;
	_unit addItemToVest _smokegrenade;
	_unit addItemToVest _smokegrenadegreen;
	_unit addItemToVest _smokegrenadegreen;
	_unit addItemToVest _smokegrenadeblue;
	_unit addItemToVest _maptools;
	
	_unit addBackpack _baglongrangeradiomedium;	// Backpack gear
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) additemCargoGlobal ["Toolkit", 1];
	
if(true) exitWith{};