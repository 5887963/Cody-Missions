waitUntil {!isNull player};

	#include "getGear.sqf";

	removebackpack _unit;
	removeheadgear _unit;
	removeAllAssignedItems _unit;
	removeallweapons _unit;
	removevest _unit;

	_unit addUniform _uniform;
	_unit addVest "rhsusf_iotv_ucp_squadleader";
	_unit addHeadgear "rhsusf_patrolcap_ucp";
	
	_unit addmagazineGlobal _riflemag;
	_unit addweapon _rifle;
	_unit addPrimaryWeaponItem _glrifle_attach;	// M16A4, loaded
	
	_unit addmagazineGlobal _pistolmag;
	_unit addweapon _pistol;					// M1911, loaded		
	
	_unit addWeapon _vector;					// Special equipment
	_unit additem "ItemCompass";
	_unit assignitem "ItemCompass";
	_unit additem "itemmap";
	_unit assignitem "itemmap";
	_unit additem "itemwatch";
	_unit assignitem "itemwatch";
	_unit addItem "ItemGPS";
	_unit assignItem "ItemGPS";
	_unit addItem _mediumrangeradio;
	_unit assignItem _mediumrangeradio;
	
	_unit addItemToUniform _bandages;			// Uniform gear
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
	
	_unit addItemToVest _glriflemag;		// Vest gear
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag_tr;
	_unit addItemToVest _glriflemag_tr;
	_unit addItemToVest _glriflemag_tr;
	_unit addItemToVest _glriflemag_tr;
	_unit addItemToVest _maptools;
	_unit addItemToVest _cableties;
	_unit addItemToVest _cableties;
	
	_unit addBackpack _baglongrangeradio;	// Backpack gear
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) additemCargoGlobal [_morphine, 2];
	(unitBackpack _unit) additemCargoGlobal [_epipen, 7];
	(unitBackpack _unit) additemCargoGlobal [_bloodbag, 3];
	
if(true) exitWith{};