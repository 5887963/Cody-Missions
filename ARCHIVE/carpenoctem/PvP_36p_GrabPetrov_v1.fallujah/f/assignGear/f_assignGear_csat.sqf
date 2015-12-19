// F3 - Folk ARPS Assign Gear Script - CSAT
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- commander
//		dc 			- deputy commander / squad leader
//		m 			- medic
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		aar			- assistant automatic rifleman
//		rat			- rifleman (AT)
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		hmgg		- heavy mg gunner (deployable)
//		hmgag		- heavy mg assistant (deployable)
//		hatg		- heavy AT gunner (deployable)
//		hatag		- heavy AT assistant (deployable)
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		msamg		- medium SAM gunner
//		msamag		- medium SAM assistant gunner
//		hsamg		- heavy SAM gunner (deployable)
//		hsamag		- heavy SAM assistant gunner (deployable)
//		sn			- sniper
//		sp			- spotter (for sniper)
//		vc			- vehicle commander
//		vg			- vehicle gunner
//		vd			- vehicle driver (repair)
//		pp			- air vehicle pilot / co-pilot
//		pcc			- air vehicle co-pilot (repair) / crew chief (repair)
//		pc			- air vehicle crew
//		eng			- engineer (demo)
//		engm		- engineer (mines)
//		uav			- UAV operator
//		div    		- divers
//
//		r 			- rifleman
//		car			- carbineer
//		smg			- submachine gunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
//		crate_small	- small ammo crate
//		crate_med	- medium ammo crate
//		crate_large	- large ammo crate
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY WEAPON
_attach1 = "";
_attach2 = "";

_silencer1 = "hlc_muzzle_545SUP_AK";	// 5.45mm PBS4 AK Suppressor
_silencer2 = "hlc_muzzle_762SUP_AK";	// 7.62mm PBS1 AK Suppressor

_scope1 = "hlc_optic_kobra";			// Kobra Sight

// Default setup
_attachments = []; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "";

_hg_scope1 = "";

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Rifle (Asst. AR - MMG Asst. Gunner - MAT Asst. Gunner - Rifleman - MCC GM - Commander)
_rifle = "hlc_rifle_ak74";
_riflemag = "hlc_30Rnd_545x39_B_AK";
_riflemag_tr = "hlc_30Rnd_545x39_T_AK";

// Carbine (Medic - Rifleman AT - MAT Gunner)
_carbine = "hlc_rifle_aks74u";
_carbinemag = "hlc_30Rnd_545x39_B_AK";
_carbinemag_tr = "hlc_30Rnd_545x39_T_AK";

// Submachine Gun (Vehicle Commander - Vehicle Driver - Vehicle Gunner - Air Vehicle Pilot - Air Vehicle Crew)
_smg = "SMG_02_F";
_smgmag = "30Rnd_9x21_Mag";
// _smgmag_tr = "30Rnd_9x21_Mag";

// Diver Rifle
// _diverWep = "arifle_SDAR_F";
// _diverMag1 = "30Rnd_556x45_Stanag";
// _diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle and Carbine with Grenade Launcher (Squad Leader - Fireteam Leader - MMG Grenadier - MAT Grenadier)
_glrifle = "hlc_rifle_aks74_GL";
_glriflemag = "hlc_30Rnd_545x39_B_AK";
_glriflemag_tr = "hlc_30Rnd_545x39_T_AK";
_glmag = "hlc_VOG25_AK";

// Grenade Launcher Smokes
_glsmokewhite = "hlc_GRD_White";
_glsmokegreen = "hlc_GRD_green";
_glsmokered = "hlc_GRD_red";
_glsmokeyellow = "hlc_GRD_yellow";

// Grenade Launcher Flares (not compatible with HLC AK's)
// _glflarewhite = "UGL_FlareWhite_F";
// _glflarered = "UGL_FlareRed_F";
// _glflareyellow = "UGL_FlareYellow_F";
// _glflaregreen = "UGL_FlareGreen_F";

// Pistol
_pistol = "hgun_Rook40_F";
_pistolmag = "16Rnd_9x21_Mag";

// Hand Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";
_smokegrenadeblue = "SmokeShellBlue";
_smokegrenadeyellow = "SmokeShellYellow";
_smokegrenadered = "SmokeShellRed";
_smokegrenadeorange = "SmokeShellOrange";
_smokegrenadepurple = "SmokeShellPurple";
_irgrenade = "O_IR_Grenade";
_flashbang = "rhs_mag_mk84";

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Medical Items
_bandages = "ACE_fieldDressing";
_morphine = "ACE_morphine";
_bloodbag = "ACE_bloodIV";
_epipen = "ACE_epinephrine";
_bodybag = "ACE_bodyBag";
// _firstaid = "FirstAidKit";
// _medkit = "Medikit";

// Misc. ACE Items
_barrel = "ACE_SpareBarrel";
_earplugs = "ACE_EarPlugs";
_cableties = "ACE_CableTie";
_irstrobe = "ACE_IR_Strobe_Item";
_microdagr = "ACE_microDAGR";
_maptools = "ACE_MapTools";
_rangetable = "ACE_RangeTable_82mm";
_firingdevice = "ACE_Clacker";
_defusalkit = "ACE_DefusalKit";

// Handheld Radios
_shortrangeradio = "ACRE_PRC343";
_mediumrangeradio = "ACRE_PRC148";
_longrangeradio = "ACRE_PRC117F";

// Field Glasses
_fieldglasses = "Binocular";

// Night Vision Goggles
_nvg = "NVGoggles_OPFOR";
_nvgwide = "ACE_NVG_Wide";

// UAV Terminal
_uavterminal = "O_UavTerminal";

// Backpacks
_bagsmall = "B_AssaultPack_rgr";			// carries 120, weighs 20
_bagmedium = "B_Kitbag_rgr";				// carries 240, weighs 30
_baglarge =  "B_Carryall_khk"; 				// carries 320, weighs 40
_medbag = "TRYK_B_Medbag_OD";
_bagmediumdiver =  "B_AssaultPack_blk";		// used by divers
_baguav = "B_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "B_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag = "B_HMG_01_support_F";			// used by Heavy MG assistant gunner
_baghatg = "B_AT_01_weapon_F";				// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";			// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";		// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";				// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";			// used by Heavy SAM assistant gunner

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifle
_AR = "hlc_rifle_rpk";
_ARmag = "hlc_75Rnd_762x39_m_rpk";
// _ARmag_tr = "";

// Medium MG
_MMG = "rhs_weap_pkm";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Light AT Launcher
_RAT = "rhs_weap_rpg26";
_RATmag = "rhs_rpg26_mag";

// Medium AT Launcher
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";	// HEDP
_MATmag2 = "rhs_rpg7_OG7V_mag";		// HE
_MATmag3 = "rhs_rpg7_PG7VR_mag";	// HEAT

// Surface to Air Missile Launcher
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Sniper
_SNrifle = "rhs_weap_svdp_wd";
_SNrifleMag = "rhs_10Rnd_762x54mmR_7N1";

// Engineer Items
_ATmine1 = "ATMine_Range_Mag";
_ATmine2 = "SLAMDirectionalMine_Wire_Mag";
_charge = "DemoCharge_Remote_Mag";
_satchel = "SatchelCharge_Remote_Mag";
_APmine1 = "APERSTripMine_Wire_Mag";
_APmine2 = "APERSBoundingMine_Range_Mag";
_APmine3 = "APERSMine_Range_Mag";
_claymore = "ClaymoreDirectionalMine_Remote_Mag";
_IED = "IEDLandSmall_Remote_Mag";
_IEDBig = "IEDLandBig_Remote_Mag";
_IEDUrban = "IEDUrbanSmall_Remote_Mag";
_IEDUrbanBig = "IEDUrbanBig_Remote_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_diver = ["div"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = [];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit

// Woodland-Hex
_baseUniform = ["rhs_uniform_flora_patchless"];
_baseHelmet = ["rhs_6b27m_green","rhs_6b27m_green_ess","rhs_6b28_green","rhs_6b28_green_ess"];
_baseGlasses = [];

// Urban
//_baseUniform = ["U_O_CombatUniform_oucamo"];
//_baseHelmet = ["H_HelmetO_oucamo"];

// Armoured vests
_lightRig = ["V_HarnessO_brn"];
_mediumRig = ["rhs_6b23_rifleman"]; 	// default for all infantry classes
_heavyRig = ["V_HarnessOGL_brn"];

// Diver
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["U_O_PilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_O"];
_pilotRig = ["V_HarnessO_brn"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["U_O_SpecopsUniform_ocamo"];
_crewHelmet = ["H_HelmetCrew_O"];
_crewRig = ["V_HarnessO_brn"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_O_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_khk"];
_ghillieGlasses = [];

// Spec Op
_sfuniform = ["U_O_SpecopsUniform_ocamo"];
_sfhelmet = ["H_HelmetSpecO_ocamo","H_HelmetSpecO_blk"];
_sfRig = ["V_PlateCarrier1_blk"];
_sfGlasses = [];


// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following interprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

		// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks

	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

	// ====================================================================================

	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

	// ====================================================================================

	// ADD UNIVERSAL ITEMS
	// Add items universal to all units of this faction

//	_unit linkItem _nvg;			// Add and equip the faction's nvg
//	_unit addItem _firstaid;		// Add a single first aid kit (FAK)
	_unit linkItem "ItemMap";		// Add and equip the map
	_unit linkItem "ItemCompass";	// Add and equip a compass
//	_unit linkItem "ItemRadio";		// Add and equip A3's default radio
	_unit linkItem "ItemWatch";		// Add and equip a watch
//	_unit linkItem "ItemGPS"; 		// Add and equip a GPS

};

// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

// _backpack = {
// 	_typeofBackPack = _this select 0;
// 	_loadout = f_param_backpacks;
// 	if (count _this > 1) then {_loadout = _this select 1};
// 	switch (_typeofBackPack) do
// 	{
// 		#include "f_assignGear_csat_b.sqf";
// 	};
// };

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{

	};

// LOADOUT: SQUAD LEADER
	case "dc":
	{
		// AKS-74 GL, loaded
		_unit addmagazines [_glriflemag, 1];
		_unit addmagazines [_glmag, 1];
		_unit addweapon _glrifle;
		
		// MP443, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		_unit addVest "rhs_6b23_6sh92_headset_mapcase";
		for "_i" from 1 to 5 do {this addItemToVest _glriflemag;};
		for "_i" from 1 to 2 do {this addItemToVest _glriflemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _cableties;};
		for "_i" from 1 to 1 do {this addItemToVest _maptools;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_longrangeradio, 1];
		(unitBackpack _unit) additemCargoGlobal [_glriflemag, 4];
		(unitBackpack _unit) additemCargoGlobal [_glriflemag_tr, 2];
		(unitBackpack _unit) additemCargoGlobal [_glmag, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokewhite, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokeyellow, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadepurple, 2];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 1];
	};

// LOADOUT: MEDIC
	case "m":
	{
		// AKS-74U, loaded
		_unit addmagazines [_carbinemag, 1];
		_unit addweapon _carbine;
		
		// MP443, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Special Equipment
		_unit linkItem "ItemGPS";
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		_unit addVest "rhs_6b23_medic";
		for "_i" from 1 to 6 do {this addItemToVest _carbinemag;};
		for "_i" from 1 to 3 do {this addItemToVest _carbinemag_tr;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _medbag;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_carbinemag, 4];
		(unitBackpack _unit) additemCargoGlobal [_carbinemag_tr, 1];
		(unitBackpack _unit) additemCargoGlobal [_bandages, 35];
		(unitBackpack _unit) additemCargoGlobal [_morphine, 20];
		(unitBackpack _unit) additemCargoGlobal [_epipen, 15];
		(unitBackpack _unit) additemCargoGlobal [_bloodbag, 5];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadepurple, 2];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 1];
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		// AKS-74 GL, loaded
		_unit addmagazines [_glriflemag, 1];
		_unit addmagazines [_glmag, 1];
		_unit addweapon _glrifle;
		
		// MP443, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		_unit addVest "rhs_6b23_6sh92_vog_headset";
		for "_i" from 1 to 4 do {this addItemToVest _glriflemag;};
		for "_i" from 1 to 4 do {this addItemToVest _glriflemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _cableties;};
		for "_i" from 1 to 1 do {this addItemToVest _maptools;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_glriflemag, 6];
		(unitBackpack _unit) additemCargoGlobal [_glmag, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokewhite, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokeyellow, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadepurple, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) additemCargoGlobal [_irgrenade, 1];
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		// RPK, loaded
		_unit addmagazines [_ARmag, 1];
		_unit addweapon _AR;
		
		// MP443, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		for "_i" from 1 to 3 do {this addItemToVest _ARmag;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_ARmag, 5];
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		// AK74, loaded
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		
		// MP443, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		_unit addVest "rhs_6b23_6sh92_radio";
		for "_i" from 1 to 7 do {this addItemToVest _riflemag;};
		for "_i" from 1 to 2 do {this addItemToVest _cableties;};
		for "_i" from 1 to 1 do {this addItemToVest _maptools;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_ARmag, 1];
		(unitBackpack _unit) additemCargoGlobal [_riflemag, 13];
		(unitBackpack _unit) additemCargoGlobal [_riflemag_tr, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadepurple, 2];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 1];
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		// AKS-74U, loaded
		_unit addmagazines [_carbinemag, 1];
		_unit addweapon _carbine;
		
		// MP443, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// RPG-26, loaded
		_unit addmagazines [_RATmag, 1];
		_unit addweapon _RAT;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		for "_i" from 1 to 5 do {this addItemToVest _carbinemag;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) additemCargoGlobal [_riflemag_tr, 4];
		(unitBackpack _unit) additemCargoGlobal [_ARmag, 2];
	};
	
// LOADOUT: RIFLEMAN
	case "r":
	{
		// AK74, loaded
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		
		// MP443, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		for "_i" from 1 to 5 do {this addItemToVest _riflemag;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_glmag, 10];
		(unitBackpack _unit) additemCargoGlobal [_riflemag, 12];
		(unitBackpack _unit) additemCargoGlobal [_riflemag_tr, 6];
		(unitBackpack _unit) additemCargoGlobal [_Mgrenade, 4];
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{	
		// AK74, loaded
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		
		// MP443, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		_unit addVest "rhs_6b23_6sh92_radio";
		for "_i" from 1 to 8 do {this addItemToVest _riflemag;};
		for "_i" from 1 to 2 do {this addItemToVest _cableties;};
		for "_i" from 1 to 1 do {this addItemToVest _maptools;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		for "_i" from 1 to 1 do {this addItemToVest _mediumrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_MMGmag, 2];
		(unitBackpack _unit) additemCargoGlobal [_MMGmag_tr, 1];
		(unitBackpack _unit) additemCargoGlobal [_riflemag, 2];
		(unitBackpack _unit) additemCargoGlobal [_riflemag_tr, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadepurple, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) additemCargoGlobal [_irgrenade, 1];
	};
	
// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		// PKM, loaded
		_unit addmagazines [_MMGmag, 1];
		_unit addweapon _MMG;
		
		// MP443, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		for "_i" from 1 to 2 do {this addItemToVest _MMGmag;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_MMGmag, 3];
		(unitBackpack _unit) additemCargoGlobal [_MMGmag_tr, 1];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 2];
		(unitBackpack _unit) additemCargoGlobal [_barrel, 1];
	};
	
// LOADOUT: MEDIUM MG GRENADIER
	case "mmggr":
	{

	};

// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{

	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{

	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{

	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{

	};

// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{

	};

// LOADOUT: HEAVY AT ASSISTANT GUNNER
	case "hatag":
	{

	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{

	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{

	};

// LOADOUT: MEDIUM SAM GUNNER
	case "msamg":
	{

	};

// LOADOUT: MEDIUM SAM ASSISTANT GUNNER
	case "msamag":
	{

	};

// LOADOUT: HEAVY SAM GUNNER
	case "hsamg":
	{

	};

// LOADOUT: HEAVY SAM ASSISTANT GUNNER
	case "hsamag":
	{

	};

// LOADOUT: SNIPER
	case "sn":
	{

	};

// LOADOUT: SPOTTER
	case "sp":
	{

	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{

	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{

	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{

	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		// Scorpion A1, loaded
		_unit addmagazines [_smgmag, 1];
		_unit addweapon _smg;
		_attachments = [];						// Removes standard attachments
		
		// M1911, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Special equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";
		_unit linkItem _nvgwide;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		for "_i" from 1 to 4 do {this addItemToVest _smgmag;};
		for "_i" from 1 to 4 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 4 do {this addItemToVest _smokegrenadegreen;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenadeblue;};
		for "_i" from 1 to 1 do {this addItemToVest _maptools;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_longrangeradio, 4];
		(unitBackpack _unit) additemCargoGlobal [_smgmag, 4];
	};

// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{
		// Scorpion A1, loaded
		_unit addmagazines [_smgmag, 1];
		_unit addweapon _smg;
		_attachments = [];						// Removes standard attachments
		
		// M1911, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Special equipment
		_unit linkItem "ItemGPS";
		_unit linkItem _nvgwide;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		for "_i" from 1 to 4 do {this addItemToVest _smgmag;};
		for "_i" from 1 to 4 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 4 do {this addItemToVest _smokegrenadegreen;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenadeblue;};
		for "_i" from 1 to 1 do {this addItemToVest _maptools;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		for "_i" from 1 to 1 do {this addItemToVest _mediumrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal ["Toolkit", 1];
		(unitBackpack _unit) additemCargoGlobal [_smgmag, 5];
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{

	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{

	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{

	};

// LOADOUT: UAV OPERATOR
	case "uav":
	{

	};

// LOADOUT: Diver
	case "div":
	{

	};

// LOADOUT: CARABINEER
	case "car":
	{

	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{

	};

// LOADOUT: GRENADIER
	case "gren":
	{

	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		
		_unit addMagazineCargoGlobal [_carbinemag, 50];
		_unit addMagazineCargoGlobal [_carbinemag_tr, 20];
		_unit addMagazineCargoGlobal [_smokegrenade, 30];
		_unit addMagazineCargoGlobal [_pistolmag, 12];
		_unit addMagazineCargoGlobal [_Mgrenade, 12];
		_unit addMagazineCargoGlobal [_GLmag, 10];
		_unit addMagazineCargoGlobal [_ARmag, 7];
		_unit addWeaponCargoGlobal [_RAT, 2];
		_unit addMagazineCargoGlobal [_RATmag, 2];
		_unit addItemCargoGlobal [_bandages, 48];
		_unit addItemCargoGlobal [_morphine, 12];
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{

	};
	
// CARGO: AMMO TRUCK - room for 50 weapons and 200 cargo items
	case "v_atr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		
		_unit addMagazineCargoGlobal [_carbinemag, 300];
		_unit addMagazineCargoGlobal [_carbinemag_tr, 100];
		_unit addMagazineCargoGlobal [_smokegrenade, 100];
		_unit addMagazineCargoGlobal [_grenade, 50];
		_unit addMagazineCargoGlobal [_GLmag, 100];
		_unit addMagazineCargoGlobal [_ARmag, 50];
		_unit addMagazineCargoGlobal [_MMGmag, 25];
		_unit addWeaponCargoGlobal [_RAT, 20];
		_unit addMagazineCargoGlobal [_RATmag, 20];
		_unit addMagazineCargoGlobal [_MATMag1, 20];
		_unit addMagazineCargoGlobal [_MATMag2, 10];
		_unit addMagazineCargoGlobal [_satchel, 20];
		
		_unit addBackpackCargoGlobal [_baglarge, 30];
	};

// CARGO: MEDICAL TRUCK - room for 50 weapons and 200 cargo items
	case "v_mtr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		
		_unit addItemCargoGlobal [_bandages, 500];
		_unit addItemCargoGlobal [_morphine, 200];
		_unit addItemCargoGlobal [_epipen, 200];
		_unit addItemCargoGlobal [_bloodbag, 200];
		
		_unit addBackpackCargoGlobal [_baglarge, 30];
	};	
	
// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
	};

// CRATE: Small, ammo for 1 fireteam
	case "crate_small":
{

};

// CRATE: Medium, ammo for 1 squad
	case "crate_med":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		
		_unit addMagazineCargoGlobal [_carbinemag, 100];
		_unit addMagazineCargoGlobal [_carbinemag_tr, 40];
		_unit addMagazineCargoGlobal [_smokegrenade, 60];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 8];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 4];
		_unit addMagazineCargoGlobal [_Mgrenade, 24];
		_unit addMagazineCargoGlobal [_GLmag, 15];
		_unit addMagazineCargoGlobal [_ARmag, 10];
		_unit addMagazineCargoGlobal [_MMGmag, 5];
		_unit addWeaponCargoGlobal [_RAT, 4];
		_unit addMagazineCargoGlobal [_RATmag, 4];
		_unit addMagazineCargoGlobal [_MATMag1, 2];
		_unit addMagazineCargoGlobal [_MATMag2, 1];
		
		_unit addItemCargoGlobal [_bandages, 40];
		_unit addItemCargoGlobal [_morphine, 30];
		_unit addItemCargoGlobal [_epipen, 20];
		_unit addItemCargoGlobal [_bloodbag, 8];
};

// CRATE: Large, ammo for 1 platoon
	case "crate_large":
{

};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\f_assignGear_csat.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// If this is an ammobox, check medical component settings and if needed run converter script.

if (!_isMan) then
	{
	// Authentic Gameplay Modification
	if (f_var_medical == 2) exitWith
		{
			[_unit] execVM "f\medical\AGM_converter.sqf";
		};
	};

// ====================================================================================

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;
