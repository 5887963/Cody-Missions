waitUntil {!isNull player};

	#include "getGear.sqf";

	removebackpack _unit;
	removeheadgear _unit;
	removeAllAssignedItems _unit;
	removeallweapons _unit;
	removevest _unit;

	_unit addUniform _crewUniform;
	_unit addVest _crewRig;
	_unit addHeadgear _crewHelmet;
	
	_unit addmagazineGlobal _smgmag;
	_unit addweapon _smg;
	_unit addPrimaryWeaponItem _smg_attach;
	_unit addWeapon "Binocular";
	_unit additem "ItemCompass";
	_unit assignitem "itemcompass";
	_unit additem "itemmap";
	_unit assignitem "itemmap";
	_unit additem "itemwatch";
	_unit assignitem "itemwatch";
	_unit addItem "ItemGPS";
	_unit assignItem "ItemGPS";
	_unit addItem "G_Tactical_Clear";
	_unit assignItem "G_Tactical_Clear";
	
	_unit addItemToUniform "ItemRadio";
	
	_unit addItemToVest _smgmag;
	_unit addItemToVest _smgmag;
	_unit addItemToVest _smgmag;
	_unit addItemToVest _smgmag;
	
	_unit addBackpack _LongRangeRadio;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
	(unitBackpack _unit) additemCargoGlobal [_smokegrenadegreen, 4];
	(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 2];
	(unitBackpack _unit) additemCargoGlobal [_bandages, 10];
	(unitBackpack _unit) additemCargoGlobal [_morphine, 2];
	
if(true) exitWith{};