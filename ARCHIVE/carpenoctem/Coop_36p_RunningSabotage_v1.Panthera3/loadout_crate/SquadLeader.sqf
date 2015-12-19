waitUntil {!isNull player};

	#include "getGear.sqf";

	removebackpack _unit;
	removeheadgear _unit;
	removeAllAssignedItems _unit;
	removeallweapons _unit;
	removevest _unit;

	_unit addUniform _uniform;
	_unit addVest "rhsusf_iotv_ucp_squadleader";
	_unit addHeadgear "rhsusf_ach_helmet_headset_ucp";
	
	_unit addmagazineGlobal _glriflemag;
	_unit addmagazineGlobal _glmag;
	_unit addweapon _glrifle;
	_unit addPrimaryWeaponItem _glrifle_attach;	// M16A4 M203, loaded
	
	_unit addmagazineGlobal _pistolmag;
	_unit addweapon _pistol;					
	
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
	
	_unit addBackpack _baglongrangeradiobig;	// Backpack gear
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) additemCargoGlobal [_glmag, 7];
	(unitBackpack _unit) additemCargoGlobal [_glsmokewhite, 7];
	(unitBackpack _unit) additemCargoGlobal [_glsmokered, 4];
	(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
	(unitBackpack _unit) additemCargoGlobal [_smokegrenadegreen, 4];
	(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 2];
	(unitBackpack _unit) additemCargoGlobal [_grenade, 2];
	(unitBackpack _unit) additemCargoGlobal [_chemgreen, 4];
	(unitBackpack _unit) additemCargoGlobal [_chemblue, 2];
	
if(true) exitWith{};