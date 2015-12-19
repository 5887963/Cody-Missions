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
//		car			- carabineer
//		smg			- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
//		crate_small	- small ammocrate
//		crate_med	- medium ammocrate
//		crate_large	- large ammocrate
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "";
_attach2 = "";

_silencer1 = "hlc_muzzle_545SUP_AK";	// 5.45mm PBS4 AK Suppressor
_silencer2 = "hlc_muzzle_762SUP_AK";	// 7.62mm PBS1 AK Suppressor

_scope1 = "hlc_optic_kobra";			// Kobra Sight
_scope2 = "HLC_Optic_1p29";				// 1P29 Scope - 1x & 8x

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

// Standard Riflemen ()
_rifle = "hlc_rifle_ak74";
_riflemag = "hlc_30Rnd_545x39_B_AK";
_riflemag_tr = "hlc_30Rnd_545x39_T_AK";

// Standard Carbine ()
_carbine = "hlc_rifle_aks74u";
_carbinemag = "hlc_30Rnd_545x39_B_AK";
_carbinemag_tr = "hlc_30Rnd_545x39_T_AK";

// Standard Submachine Gun ()
_smg = "SMG_02_F";
_smgmag = "30Rnd_9x21_Mag";
// _smgmag_tr = "30Rnd_9x21_Mag";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades ()
_glrifle = "hlc_rifle_aks74_GL";
_glriflemag = "hlc_30Rnd_545x39_B_AK";
_glriflemag_tr = "hlc_30Rnd_545x39_T_AK";
_glmag = "hlc_VOG25_AK";

// Grenade Launcher Smokes
_glsmokewhite = "hlc_GRD_White";
_glsmokegreen = "hlc_GRD_green";
_glsmokered = "hlc_GRD_red";
_glsmokeyellow = "hlc_GRD_yellow";

// Grenade Launcher Flares
_glflarewhite = "UGL_FlareWhite_F";
_glflarered = "UGL_FlareRed_F";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "UGL_FlareGreen_F";

// Pistol
_pistol = "hgun_Rook40_F";
_pistolmag = "16Rnd_9x21_Mag";

// Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";
_smokegrenadeblue = "SmokeShellBlue";
_flashbang = "rhs_mag_mk84";

// Medical Items
// _firstaid = "FirstAidKit";
// _medkit = "Medikit";
_bandages = "AGM_Bandage";
_morphine = "AGM_Morphine";
_bloodbag = "AGM_Bloodbag";
_epipen = "AGM_Epipen";

// Misc. AGM Items
_barrel = "AGM_SpareBarrel";
_cableties = "AGM_CableTie";
_maptools = "AGM_MapTools";
_vector = "AGM_Vector";

// Handheld Radios
_shortrangeradio = "tf_pnr1000a";
_mediumrangeradio = "tf_fadak";

// Night Vision Goggles
_nvg = "rhsusf_ANPVS_14";
_nvgwide = "AGM_NVG_Wide";

// UAV Terminal
_uavterminal = "O_UavTerminal";

// Chemlights
_chemgreen = "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow = "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_baglongrangeradiobig = "tf_mr3000_rhs";
_bagsmall = "B_AssaultPack_rgr";			// carries 120, weighs 20
_bagmedium = "B_Kitbag_rgr";				// carries 240, weighs 30
_baglarge =  "B_Carryall_mcamo"; 			// carries 320, weighs 40
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

// Automatic Rifleman
_AR = "hlc_rifle_rpk";
_ARmag = "hlc_75Rnd_762x39_m_rpk";
// _ARmag_tr = "";

// Medium MG
_MMG = "rhs_weap_pkm";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Rifleman AT
_RAT = "rhs_weap_rpg26";
_RATmag = "rhs_rpg26_mag";

// Medium AT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";	// HEDP
_MATmag2 = "rhs_rpg7_OG7V_mag";		// HE
_MATmag3 = "rhs_rpg7_PG7VR_mag";	// HEAT

// Surface Air
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Sniper
_SNrifle = "rhs_weap_svdp_wd";
_SNrifleMag = "rhs_10Rnd_762x54mmR_7N1";

// Engineer items
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
_baseUniform = ["TRYK_U_denim_hood_nc"];
_baseHelmet = ["H_Watchcap_camo","H_Watchcap_khk","H_Watchcap_blk"];
_baseGlasses = [];

// Urban
//_baseUniform = ["U_O_CombatUniform_oucamo"];
//_baseHelmet = ["H_HelmetO_oucamo"];

// Armored vests
_lightRig = ["V_HarnessO_brn"];
_mediumRig = ["V_TacVest_oli"]; 	// default for all infantry classes
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
// The following inrerprets formats what has been passed to this script element

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

_backpack = {
	_typeofBackPack = _this select 0;
	_loadout = f_param_backpacks;
	if (count _this > 1) then {_loadout = _this select 1};
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_csat_b.sqf";
	};
};

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

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
	    _unit forceAddUniform "TRYK_U_denim_hood_blk";
		_unit addVest "V_TacVest_oli";
		
		_unit addmagazines [_glriflemag_tr,1];
		_unit addmagazines [_glmag,1];
		_unit addweapon _glrifle;					// AKM GL, loaded
		
		_unit addmagazines [_pistolmag,1];
		_unit addweapon _pistol;					// MP443, loaded
		
		_unit addWeapon "Binocular";				// Special equipment
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
		_unit addItemToVest _glriflemag_tr;
		_unit addItemToVest _glriflemag_tr;
		_unit addItemToVest _maptools;
		_unit addItemToVest _cableties;
		_unit addItemToVest _cableties;
		
		_unit addBackpack _baglongrangeradiobig;	// Backpack gear
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_glmag, 7];
		(unitBackpack _unit) additemCargoGlobal [_glriflemag, 6];
		(unitBackpack _unit) additemCargoGlobal [_glsmokewhite, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokeyellow, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadepurple, 2];
	};

// LOADOUT: MEDIC
	case "m":
	{
	    _unit forceAddUniform "TRYK_U_denim_jersey_blu";
		_unit addVest "TRYK_V_tacv1_BK";
		
		_unit addmagazines [_carbinemag_tr,1];
		_unit addweapon _carbine;				// AKS74U, loaded
		
		_unit addmagazines [_pistolmag,1];
		_unit addweapon _pistol;				// MP443, loaded
		
		_unit addItem _shortrangeradio;			// Special equipment
		_unit assignItem _shortrangeradio;
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
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		
		_unit addBackpack _medbag;				// Backpack gear
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_carbinemag, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 10];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadepurple, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) additemCargoGlobal [_bandages, 20];
		(unitBackpack _unit) additemCargoGlobal [_morphine, 20];
		(unitBackpack _unit) additemCargoGlobal [_epipen, 15];
		(unitBackpack _unit) additemCargoGlobal [_bloodbag, 5];
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
	    _unit forceAddUniform "TRYK_U_denim_hood_mc";
		_unit addVest "V_I_G_resistanceLeader_F";
		
		_unit addmagazines [_glriflemag_tr,1];
		_unit addmagazines [_glmag,1];
		_unit addweapon _glrifle;				// AKM GL, loaded
		
		_unit addmagazines [_pistolmag,1];
		_unit addweapon _pistol;				// MP443, loaded
		
		_unit addWeapon "Binocular";			// Special equipment
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addItem _mediumrangeradio;
		_unit assignItem _mediumrangeradio;
		
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
		
		_unit addItemToVest _glriflemag;		// Vest gear
		_unit addItemToVest _glriflemag;
		_unit addItemToVest _glriflemag;
		_unit addItemToVest _glriflemag_tr;
		_unit addItemToVest _glriflemag_tr;
		_unit addItemToVest _maptools;
		_unit addItemToVest _cableties;
		_unit addItemToVest _cableties;
		
		_unit addBackpack _bagmedium;			// Backpack gear
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_glriflemag, 7];
		(unitBackpack _unit) additemCargoGlobal [_glmag, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokewhite, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokeyellow, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadepurple, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) additemCargoGlobal [_grenade, 2];
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		_unit addmagazines [_ARmag,1];
		_unit addweapon _AR;					// RPK, loaded
		
		_unit addmagazines [_pistolmag,1];
		_unit addweapon _pistol;				// MP443, loaded
		
		_unit addItem _shortrangeradio;			// Special equipment
		_unit assignItem _shortrangeradio;
		
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
		
		_unit addItemToVest _ARmag;				// Vest gear
		_unit addItemToVest _ARmag;
		_unit addItemToVest _ARmag;
		
		_unit addBackpack _bagsmall;			// Backpack gear
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_ARmag, 4];
		(unitBackpack _unit) additemCargoGlobal [_grenade, 2];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 2];
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		_unit addVest "V_TacVest_oli";
		
		_unit addmagazines [_riflemag_tr,1];
		_unit addweapon _rifle;					// AK74, loaded
		
		_unit addmagazines [_pistolmag,1];
		_unit addweapon _pistol;				// MP443, loaded
		
		_unit addWeapon "Binocular";			// Special equipment
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addItem _mediumrangeradio;
		_unit assignItem _mediumrangeradio;
		
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
		
		_unit addItemToVest _riflemag;			// Vest gear
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag_tr;
		_unit addItemToVest _riflemag_tr;
		
		_unit addBackpack _bagmedium;			// Backpack gear
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_ARmag, 1];
		(unitBackpack _unit) additemCargoGlobal [_riflemag, 16];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 6];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadegreen, 2];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 1];
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		_unit addmagazines [_riflemag_tr,1];
		_unit addweapon _carbine;				// AKS74U, loaded
		
		_unit addmagazines [_pistolmag,1];
		_unit addweapon _pistol;				// MP443, loaded
		
		_unit addmagazines [_RATmag,1];
		_unit addweapon _RAT;					// RPG-7, loaded
		
		_unit addItem _shortrangeradio;			// Special equipment
		_unit assignItem _shortrangeradio;
		
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
		
		_unit addItemToVest _riflemag;			// Vest gear
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag_tr;
		_unit addItemToVest _riflemag_tr;
		
		_unit addBackpack _bagsmall;			// Backpack gear
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_riflemag, 6];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 2];
		(unitBackpack _unit) additemCargoGlobal [_ARmag, 2];
	};
	
// LOADOUT: RIFLEMAN
	case "r":
	{
		_unit addmagazines [_riflemag_tr,1];
		_unit addweapon _rifle;					// M16A4, loaded
		
		_unit addmagazines [_pistolmag,1];
		_unit addweapon _pistol;				// MP443, loaded
		
		_unit addItem _shortrangeradio;			// Special equipment
		_unit assignItem _shortrangeradio;
		
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
		
		_unit addItemToVest _riflemag;			// Vest gear
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag_tr;
		_unit addItemToVest _riflemag_tr;
		_unit addItemToVest _smokegrenade;
		_unit addItemToVest _smokegrenade;
		
		_unit addBackpack _bagmedium;			// Backpack gear
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_riflemag, 15];
		(unitBackpack _unit) additemCargoGlobal [_grenade, 6];
		(unitBackpack _unit) additemCargoGlobal [_glmag, 8];
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		_unit addmagazines [_MMGmag,1];
		_unit addweapon _MMG;					// PKM, loaded
		
		_unit addmagazines [_pistolmag,1];
		_unit addweapon _pistol;				// MP443, loaded
		
		_unit addItem _shortrangeradio;			// Special equipment
		_unit assignItem _shortrangeradio;
		
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
		
		_unit addBackpack _bagmedium;			// Backpack gear
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_MMGmag, 3];
		(unitBackpack _unit) additemCargoGlobal [_MMGmag_tr, 1];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 2];
		(unitBackpack _unit) additemCargoGlobal [_grenade, 2];
		(unitBackpack _unit) additemCargoGlobal [_barrel, 1];
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		_unit addVest "rhs_6b23_6sh92_radio";
		
		_unit addmagazines [_riflemag,1];
		_unit addweapon _rifle;					// AK74, loaded
		
		_unit addmagazines [_pistolmag,1];
		_unit addweapon _pistol;				// MP443, loaded
		
		_unit addWeapon "Binocular";			// Special equipment
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addItem _mediumrangeradio;
		_unit assignItem _mediumrangeradio;
		
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
		
		_unit addItemToVest _riflemag;			// Vest gear
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		
		_unit addBackpack _bagmedium;			// Backpack gear
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_MMGmag, 2];
		(unitBackpack _unit) additemCargoGlobal [_MMGmag_tr, 1];
		(unitBackpack _unit) additemCargoGlobal [_riflemag, 2];
		(unitBackpack _unit) additemCargoGlobal [_riflemag_tr, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadepurple, 2];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 1];
		(unitBackpack _unit) additemCargoGlobal [_grenade, 2];
	};
	
// LOADOUT: MEDIUM MG GRENADIER
	case "mmggr":
	{
		_unit addVest "rhs_6b23_6sh92_vog";
		
		_unit addmagazines [_glriflemag,1];
		_unit addmagazines [_glmag,1];
		_unit addweapon _glrifle;				// AKM GL, loaded
		
		_unit addmagazines [_pistolmag,1];
		_unit addweapon _pistol;				// MP443, loaded
		
		_unit addItem _shortrangeradio;			// Special equipment
		_unit assignItem _shortrangeradio;
		
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
		
		_unit addItemToVest _glriflemag;		// Vest gear
		_unit addItemToVest _glriflemag;
		_unit addItemToVest _glriflemag;
		_unit addItemToVest _glriflemag;
		_unit addItemToVest _glriflemag;
		_unit addItemToVest _glriflemag;
		_unit addItemToVest _glriflemag;
		_unit addItemToVest _glriflemag;
		
		_unit addBackpack _bagmedium;			// Backpack gear
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_MMGmag, 2];
		(unitBackpack _unit) additemCargoGlobal [_glriflemag_tr, 4];
		(unitBackpack _unit) additemCargoGlobal [_glriflemag, 2];
		(unitBackpack _unit) additemCargoGlobal [_glmag, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokewhite, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokeyellow, 4];
		(unitBackpack _unit) additemCargoGlobal [_grenade, 2];
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
		_unit addmagazines [_smgmag,1];
		_unit addweapon _smg;					// MP5A4, loaded
		_attachments = [];						// Removes standard attachments
		
		_unit addmagazines [_pistolmag,1];
		_unit addweapon _pistol;				// M1911, loaded
		
		_unit addWeapon _vector;				// Special equipment
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addItem _mediumrangeradio;
		_unit assignItem _mediumrangeradio;
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
		_unit addItemToVest _smokegrenadepurple;
		_unit addItemToVest _smokegrenadepurple;
		_unit addItemToVest _smokegrenadeblue;
		_unit addItemToVest _maptools;
		
		_unit addBackpack _baglongrangeradiobig;	// Backpack gear
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal ["Toolkit", 1];
	};

// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{

	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{

	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		_unit addVest "rhs_6b23_6sh92";
		_unit addmagazines [_carbinemag,1];
		_unit addweapon _carbine;				// AKS74U, loaded
		
		_unit addmagazines [_pistolmag,1];
		_unit addweapon _pistol;				// MP443, loaded
		
		_unit addItem _shortrangeradio;			// Special equipment
		_unit assignItem _shortrangeradio;
		
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
		
		_unit addItemToVest _riflemag;			// Vest gear
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		_unit addItemToVest _riflemag;
		
		_unit addBackpack _bagsmall;			// Backpack gear
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_riflemag, 2];
		(unitBackpack _unit) additemCargoGlobal [_riflemag_tr, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 2];
		(unitBackpack _unit) additemCargoGlobal [_satchel, 1];
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
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_glriflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_ratmag, 1];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 4];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_firstaid,4];
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 10];
		_unit addMagazineCargoGlobal [_riflemag, 40];
		_unit addMagazineCargoGlobal [_glriflemag, 40];
		_unit addMagazineCargoGlobal [_carbinemag, 40];
		_unit addMagazineCargoGlobal [_armag, 22];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 12];
		_unit addmagazineCargoGlobal [_mgrenade,12];
		_unit addMagazineCargoGlobal [_smokegrenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addMagazineCargoGlobal [_glmag, 12];
		_unit addMagazineCargoGlobal [_glsmokewhite, 12];
		_unit addItemCargoGlobal [_firstaid,8];
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 4];
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_armag, 8];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addmagazineCargoGlobal [_mgrenade,8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 8];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_firstaid,6];
	};

// CRATE: Small, ammo for 1 fireteam
	case "crate_small":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 5];
		_unit addMagazineCargoGlobal [_glriflemag, 5];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_carbinemag, 5];
		_unit addMagazineCargoGlobal [_glmag, 5];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addMagazineCargoGlobal [_mgrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addItemCargoGlobal [_firstaid, 6];
};

// CRATE: Medium, ammo for 1 squad
	case "crate_med":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 15];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_armag, 15];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_glmag, 20];
		_unit addMagazineCargoGlobal [_glsmokewhite,16];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 25];
		_unit addMagazineCargoGlobal [_mgrenade, 25];
		_unit addMagazineCargoGlobal [_smokegrenade, 25];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 6];
		_unit addItemCargoGlobal [_firstaid, 25];
};

// CRATE: Large, ammo for 1 platoon
	case "crate_large":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 45];
		_unit addMagazineCargoGlobal [_glriflemag, 60];
		_unit addMagazineCargoGlobal [_armag, 45];
		_unit addMagazineCargoGlobal [_carbinemag, 60];
		_unit addMagazineCargoGlobal [_glmag, 60];
		_unit addMagazineCargoGlobal [_glsmokewhite,50];
		_unit addMagazineCargoGlobal [_ratmag, 20];
		_unit addMagazineCargoGlobal [_grenade, 75];
		_unit addMagazineCargoGlobal [_mgrenade, 75];
		_unit addMagazineCargoGlobal [_smokegrenade, 75];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 20];
		_unit addItemCargoGlobal [_firstaid, 75];
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
