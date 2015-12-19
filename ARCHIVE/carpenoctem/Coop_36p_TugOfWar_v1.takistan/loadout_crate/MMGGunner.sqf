waitUntil {!isNull player};

	#include "getGear.sqf";

	removebackpack _unit;
	removeheadgear _unit;
	removeAllAssignedItems _unit;
	removeallweapons _unit;
	removevest _unit;

	_unit addUniform _uniform;
	_unit addVest "rhsusf_iotv_ucp_SAW";
	_unit addheadgear (_helmet call BIS_fnc_selectRandom);
	
	_unit addmagazineGlobal _MMGmag;
	_unit addweapon _MMG;					// M60, loaded
		
	_unit addmagazineGlobal _pistolmag;
	_unit addweapon _pistol;
	
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
	
	_unit addItemToVest _MMGmag;			// Vest gear
	_unit addItemToVest _MMGmag;
	_unit addItemToVest _MMGmag_tr;
	_unit addItemToVest _smokegrenade;
	_unit addItemToVest _smokegrenade;
	_unit addItemToVest _smokegrenade;
	_unit addItemToVest _smokegrenade;
	
	_unit addBackpack _bagsmall;			// Backpack gear
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) additemCargoGlobal [_MMGmag, 3];
	(unitBackpack _unit) additemCargoGlobal [_grenade, 2];
	(unitBackpack _unit) additemCargoGlobal [_barrel, 1];
	
if(true) exitWith{};