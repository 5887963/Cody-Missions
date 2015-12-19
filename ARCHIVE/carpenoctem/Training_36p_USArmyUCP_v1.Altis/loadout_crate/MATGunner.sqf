waitUntil {!isNull player};

	#include "getGear.sqf";

	removebackpack _unit;
	removeheadgear _unit;
	removeAllAssignedItems _unit;
	removeallweapons _unit;
	removevest _unit;

	_unit addUniform _uniform;
	_unit addvest _vest;
	_unit addHeadgear "rhsusf_ach_helmet_ess_ucp";
	
	_unit addmagazineGlobal _carbinemag;
	_unit addweapon _carbine;
	_unit addPrimaryWeaponItem _carbine_attach;
	
	_unit addmagazineGlobal _pistolmag;
	_unit addweapon _pistol;				// M1911, loaded
		
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
	
	_unit addBackpack _bagmedium;			// Backpack gear
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) additemCargoGlobal [_MATmag1, 3];
	(unitBackpack _unit) additemCargoGlobal [_MATmag2, 2];
		
	_unit addweapon _MAT;					// Carl Gustav, loaded
	_unit addSecondaryWeaponItem "tf47_optic_m3maaws";
	_unit addmagazines [_MATmag1,1];
	
if(true) exitWith{};