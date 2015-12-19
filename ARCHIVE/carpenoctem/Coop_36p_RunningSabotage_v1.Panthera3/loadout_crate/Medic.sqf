waitUntil {!isNull player};

	#include "getGear.sqf";

	removebackpack _unit;
	removeheadgear _unit;
	removeAllAssignedItems _unit;
	removeallweapons _unit;
	removevest _unit;

	_unit addUniform _uniform;
	_unit addVest "rhsusf_iotv_ucp_medic";
	_unit addheadgear (_helmet call BIS_fnc_selectRandom);
	
	_unit addmagazineGlobal _carbinemag;
	_unit addweapon _carbine;
	_unit addPrimaryWeaponItem _carbine_attach;

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
	_unit addItem "ItemGPS";
	_unit assignItem "ItemGPS";
	
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
	
	_unit addBackpack _medbag;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 10];
	(unitBackpack _unit) additemCargoGlobal [_smokegrenadegreen, 4];
	(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 2];
	(unitBackpack _unit) additemCargoGlobal [_bandages, 20];
	(unitBackpack _unit) additemCargoGlobal [_morphine, 20];
	(unitBackpack _unit) additemCargoGlobal [_epipen, 15];
	(unitBackpack _unit) additemCargoGlobal [_bloodbag, 5];
	(unitBackpack _unit) additemCargoGlobal [_chemblue, 5];
	(unitBackpack _unit) additemCargoGlobal [_chemgreen, 5];
	
if(true) exitWith{};