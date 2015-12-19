waitUntil {!isNull player};

	#include "getGear.sqf";

	removebackpack _unit;
	removeheadgear _unit;
	removeAllAssignedItems _unit;
	removeallweapons _unit;
	removevest _unit;

	_unit addUniform (_uniform call BIS_fnc_selectRandom);
	_unit addvest _vest;
	_unit addHeadgear _COhat;
	
	_unit addmagazineGlobal _glriflemag;
	_unit addmagazineGlobal _glmag;
	_unit addweapon _glrifle;
	_unit addPrimaryWeaponItem _glrifle_attach;
	_unit addPrimaryWeaponItem _glrifle_attach2;
	_unit addWeapon "Laserdesignator";
	_unit additem "ItemCompass";
	_unit assignitem "itemcompass";
	_unit additem "itemmap";
	_unit assignitem "itemmap";
	_unit additem "itemwatch";
	_unit assignitem "itemwatch";
	_unit addItem "ItemGPS";
	_unit assignItem "ItemGPS";
	_unit addItem "G_Tactical_Black";
	_unit assignItem "G_Tactical_Black";
	
	_unit addItemToUniform _grenade;
	_unit addItemToUniform _grenade;
	_unit addItemToUniform _grenade;
	_unit addItemToUniform _grenade;
	_unit addItemToUniform _smokegrenade;
	_unit addItemToUniform _smokegrenade;
	_unit addItemToUniform _smokegrenade;
	_unit addItemToUniform _smokegrenade;
	_unit addItemToUniform _smokegrenade;
	_unit addItemToUniform _smokegrenade;
	_unit addItemToUniform _smokegrenade;
	_unit addItemToUniform "ItemRadio";
	_unit addItemToUniform "Laserbatteries";
	
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag;
	_unit addItemToVest _glriflemag_tr;
	_unit addItemToVest _glriflemag_tr;
	_unit addItemToVest _smokegrenadegreen;
	_unit addItemToVest _smokegrenadegreen;
	_unit addItemToVest _smokegrenadegreen;
	_unit addItemToVest _smokegrenadegreen;
	_unit addItemToVest _smokegrenadeblue;
	_unit addItemToVest _smokegrenadeblue;	
	
	_unit addBackpack _LongRangeRadio;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) additemCargoGlobal [_glmag, 6];
	(unitBackpack _unit) additemCargoGlobal [_glsmokewhite, 8];
	(unitBackpack _unit) additemCargoGlobal [_glsmokered, 4];
	(unitBackpack _unit) additemCargoGlobal [_bandages, 10];
	(unitBackpack _unit) additemCargoGlobal [_morphine, 2];
	
if(true) exitWith{};