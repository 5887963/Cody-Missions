// F3 - Folk ARPS Assign Gear Script - NATO
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
//		dm			- designated marksman
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
//		uav			- UAV operator"
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
_attach1 = "RH_SFM952V";		// Surefire M952V Flashlight (black)
_attach2 = "RH_peq15";			// PEQ15 IR Laser (tan)

_silencer1 = "RH_qdss_nt4";		// KAC QDSS NT4 Suppressor (M4)
_silencer2 = "RH_saker";		// Silencerco Saker Suppressor (M16)

_scope1 = "RH_compM2";			// Aimpoint CompM2 Red Dot - 1x
_scope2 = "RH_t1";				// Aimpoint T1 Red Dot - 1x
_scope3 = "RH_eotexps3";		// Eotech EXPS3 - 1x

_bipod1 = "bipod_01_F_snd";		// Default bipod
_bipod2 = "bipod_02_F_blk";		// Black bipod

// Default setup
_attachments = [_attach1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Rifle (Asst. AR - MMG Asst. Gunner - MAT Asst. Gunner - Rifleman)
_rifle = "rhs_weap_m16a4_carryhandle_grip_pmag";
_riflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_riflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// Carbine (Medic - Rifleman AT - MAT Gunner)
_carbine = "rhs_weap_m4a1_carryhandle_pmag";
_carbinemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_carbinemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// Submachine Gun (Vehicle Commander - Vehicle Driver - Vehicle Gunner - Air Vehicle Pilot - Air Vehicle Crew)
_smg = "SMG_02_F";
_smgmag = "30Rnd_9x21_Mag";
// _smgmag_tr = "";

// Diver Rifle
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle and Carbine with Grenade Launcher (Squad Leader - Fireteam Leader - Commander)
_glrifle = "rhs_weap_m16a4_carryhandle_M203";
_glriflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glriflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glcarbine = "rhs_weap_m4a1_carryhandle_m203S";
_glcarbinemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glcarbinemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glmag = "rhs_mag_M441_HE";

// Grenade Launcher Smokes
_glsmokewhite = "rhs_mag_m714_White";
_glsmokegreen = "rhs_mag_m715_Green";
_glsmokered = "rhs_mag_m713_Red";
_glsmokeyellow = "rhs_mag_m716_yellow";

// Grenade Launcher Flares
_glflarewhite = "rhs_mag_M585_white";
_glflarered = "rhs_mag_m662_red";
_glflaregreen = "rhs_mag_m661_green";

// Pistol
_pistol = "hgun_ACPC2_F";
_pistolmag = "9Rnd_45ACP_Mag";

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
_irgrenade = "B_IR_Grenade";
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
_mediumrangeradio1 = "ACRE_PRC152";
_mediumrangeradio2 = "ACRE_PRC148";
_longrangeradio = "ACRE_PRC117F";

// Field Glasses
_fieldglasses = "ACE_Vector";

// Night Vision Goggles
_nvg = "rhsusf_ANPVS_15";
_nvgwide = "ACE_NVG_Wide";

// UAV Terminal
_uavterminal = "B_UavTerminal";

// Backpacks
_bagsmall = "B_AssaultPack_rgr";			// carries 120, weighs 20
_bagmedium = "B_Kitbag_rgr";				// carries 240, weighs 30
_baglarge =  "B_Carryall_khk"; 				// carries 320, weighs 40
_medbag = "TRYK_B_Medbag_OD";
_bagmediumdiver =  "B_AssaultPack_blk";		// used by divers
_baguav = "B_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "RHS_M2_Gun_Bag";				// used by Heavy MG gunner
_baghmgag = "RHS_M2_MiniTripod_Bag";		// used by Heavy MG assistant gunner
_baghatg = "B_AT_01_weapon_F";				// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";			// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";		// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";				// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";			// used by Heavy SAM assistant gunner

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifle
_AR = "rhs_weap_m249_pip_L";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
// _ARmag_tr = "rhs_200rnd_556x45_T_SAW";

// Medium MG
_MMG = "hlc_lmg_m60";
_MMGmag = "hlc_100Rnd_762x51_M_M60E4";
_MMGmag_tr = "hlc_100Rnd_762x51_T_M60E4";

// Marksman Rifle
_DMrifle = "srifle_DMR_03_tan_F";
_DMriflemag = "20Rnd_762x51_Mag";

// MAR-10
//_DMrifle = "srifle_DMR_02_F";
//_DMriflemag = "10Rnd_338_Mag";

// Light AT Launcher
_RAT = "rhs_weap_M136";
// _RATmag = "";

// Medium AT Launcher
_MAT = "tf47_m3maaws";
_MATmag1 = "tf47_m3maaws_HEAT";
_MATmag2 = "tf47_m3maaws_HEDP";
_MATmag3 = "tf47_m3maaws_HE";
_MATmag4 = "tf47_m3maaws_ILLUM";
_MATmag5 = "tf47_m3maaws_SMOKE";

// Surface to Air Missile Launcher
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Heavy AT Launcher
_HAT = "rhs_weap_fgm148";
_HATmag = "rhs_fgm148_magazine_AT";

// Sniper Rifle
_SNrifle = "srifle_LRR_F";
_SNrifleMag = "7Rnd_408_Mag";

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
_baseUniform = ["rhs_uniform_cu_ucp"];
_baseHelmet = ["rhsusf_ach_helmet_ucp","rhsusf_ach_helmet_ess_ucp"];
_baseGlasses = [];

// Armoured vests
_lightRig = ["V_TacVest_blk","V_TacVest_brn","V_TacVest_camo","V_TacVest_oli"];
_mediumRig = ["rhsusf_iotv_ucp_rifleman"]; 	// default for all infantry classes
_heavyRig = ["V_PlateCarrier3_rgr"];

// Diver
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["U_B_HeliPilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_B"];
_pilotRig = ["V_TacVest_blk"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["TRYK_U_B_GRTAN_CombatUniform"];
_crewHelmet = ["H_HelmetCrew_I"];
_crewRig = ["V_TacVest_blk"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// Spec-Op
_sfuniform = ["U_B_SpecopsUniform_sgg"];
_sfhelmet = ["H_HelmetSpecB","H_HelmetSpecB_paint1","H_HelmetSpecB_paint2","H_HelmetSpecB_blk"];
_sfRig = _mediumRig;
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
//	_unit linkItem "ItemMap";		// Add and equip the map
//	_unit linkItem "ItemCompass";	// Add and equip a compass
//	_unit linkItem "ItemRadio";		// Add and equip A3's default radio
//	_unit linkItem "ItemWatch";		// Add and equip a watch
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
// 		#include "f_assignGear_nato_b.sqf";
// 	};
// };

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================
/* START COMMENT
// LOADOUT: COMMANDER
	case "co":
	{
		// Patrol Cap
		_unit addHeadgear "rhsusf_patrolcap_ucp";

		// Primary Weapon, loaded
		_unit addMagazines [_glriflemag, 1];
		_unit addMagazines [_glsmokewhite, 1];
		_unit addWeapon _glrifle;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		_unit addVest "rhsusf_iotv_ucp_squadleader";
		{_unit addItemToVest _glriflemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _glriflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _cableties} forEach [1,2];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_glsmokewhite, 8];
		(unitBackpack _unit) addItemCargoGlobal [_glsmokered, 7];
		(unitBackpack _unit) addItemCargoGlobal [_glflarered, 10];
		(unitBackpack _unit) addItemCargoGlobal [_Mgrenade, 2];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenade, 3];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadegreen, 5];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) addItemCargoGlobal [_irstrobe, 1];
	};

// LOADOUT: FORWARD AIR CONTROLLER
	case "fac":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_carbinemag, 1];
		_unit addWeapon _carbine;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		_unit addVest "rhsusf_iotv_ucp_teamleader";
		{_unit addItemToVest _carbinemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];
		{_unit addItemToVest _mediumrangeradio2} forEach [1];
	};

// LOADOUT: UAV OPERATOR
	case "uav":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_carbinemag, 1];
		_unit addWeapon _carbine;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special Equipment
		_unit linkItem _uavterminal;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _carbinemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest "Laserbatteries"} forEach [1,2,3,4];

		// Backpack Gear
		_unit addBackpack _baguav;
	};

// LOADOUT: SQUAD LEADER
	case "dc":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_headset_ucp";

		// Primary Weapon, loaded
		_unit addMagazines [_glriflemag, 1];
		_unit addMagazines [_glsmokewhite, 1];
		_unit addWeapon _glrifle;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		_unit addVest "rhsusf_iotv_ucp_squadleader";
		{_unit addItemToVest _glriflemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _glriflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _cableties} forEach [1,2];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_glsmokewhite, 8];
		(unitBackpack _unit) addItemCargoGlobal [_glsmokered, 7];
		(unitBackpack _unit) addItemCargoGlobal [_glflarered, 10];
		(unitBackpack _unit) addItemCargoGlobal [_Mgrenade, 2];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenade, 3];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadegreen, 5];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) addItemCargoGlobal [_irstrobe, 1];
	};

// LOADOUT: MEDIC
	case "m":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_carbinemag, 1];
		_unit addWeapon _carbine;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special Equipment
		_unit linkItem "ItemGPS";

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		_unit addVest "rhsusf_iotv_ucp_medic";
		{_unit addItemToVest _carbinemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _medbag;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_bandages, 40];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 30];
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 20];
		(unitBackpack _unit) addItemCargoGlobal [_bloodbag, 8];
		(unitBackpack _unit) addItemCargoGlobal [_Mgrenade, 2];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenade, 16];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadegreen, 4];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) addItemCargoGlobal [_irstrobe, 1];
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_headset_ucp";

		// Primary Weapon, loaded
		_unit addMagazines [_glcarbinemag, 1];
		_unit addMagazines [_glmag, 1];
		_unit addWeapon _glcarbine;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		_unit addVest "rhsusf_iotv_ucp_grenadier";
		{_unit addItemToVest _glcarbinemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _glcarbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _cableties} forEach [1,2];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_glmag, 7];
		(unitBackpack _unit) addItemCargoGlobal [_glsmokewhite, 7];
		(unitBackpack _unit) addItemCargoGlobal [_glsmokered, 4];
		(unitBackpack _unit) addItemCargoGlobal [_glflarered, 7];
		(unitBackpack _unit) addItemCargoGlobal [_Mgrenade, 2];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenade, 3];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadegreen, 5];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) addItemCargoGlobal [_irstrobe, 1];
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_ARmag, 1];
		_unit addWeapon _AR;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		_unit addVest "rhsusf_iotv_ucp_SAW";
		{_unit addItemToVest _ARmag} forEach [1,2,3];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_ARmag, 4];
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_riflemag, 1];
		_unit addWeapon _rifle;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		_unit addVest "rhsusf_iotv_ucp_teamleader";
		{_unit addItemToVest _riflemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _riflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _cableties} forEach [1,2];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_ARmag, 4];
		(unitBackpack _unit) addItemCargoGlobal [_riflemag, 8];
		(unitBackpack _unit) addItemCargoGlobal [_riflemag_tr, 2];
		(unitBackpack _unit) addItemCargoGlobal [_Mgrenade, 2];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenade, 3];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadegreen, 2];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadeblue, 1];
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_ess_ucp";

		// Primary Weapon, loaded
		_unit addMagazines [_carbinemag, 1];
		_unit addWeapon _carbine;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Light AT Launcher, loaded
//		_unit addMagazines [_RATmag, 1];
		_unit addWeapon _RAT;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _carbinemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _shortrangeradio} forEach [1];
	};

// LOADOUT: RIFLEMAN
	case "r":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_riflemag, 1];
		_unit addWeapon _rifle;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _riflemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _riflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_glmag, 10];
		(unitBackpack _unit) addItemCargoGlobal [_riflemag, 8];
		(unitBackpack _unit) addItemCargoGlobal [_riflemag_tr, 2];
		(unitBackpack _unit) addItemCargoGlobal [_Mgrenade, 6];
	};

// LOADOUT: MEDIUM MG TEAM LEADER
	case "mmgag":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_headset_ucp";

		// Primary Weapon, loaded
		_unit addMagazines [_glriflemag, 1];
		_unit addMagazines [_glsmokewhite, 1];
		_unit addWeapon _glrifle;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		_unit addVest "rhsusf_iotv_ucp_teamleader";
		{_unit addItemToVest _riflemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _riflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _cableties} forEach [1,2];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_glsmokewhite, 10];
		(unitBackpack _unit) addItemCargoGlobal [_glsmokered, 5];
		(unitBackpack _unit) addItemCargoGlobal [_glflarered, 10];
		(unitBackpack _unit) addItemCargoGlobal [_Mgrenade, 2];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenade, 3];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadegreen, 5];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) addItemCargoGlobal [_irstrobe, 1];
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_MMGmag, 1];
		_unit addWeapon _MMG;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		_unit addVest "rhsusf_iotv_ucp_SAW";
		{_unit addItemToVest _MMGmag} forEach [1,2];
		{_unit addItemToVest _MMGmag_tr} forEach [1];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_MMGmag, 3];
		(unitBackpack _unit) addItemCargoGlobal [_MMGmag_tr, 1];
		(unitBackpack _unit) addItemCargoGlobal [_barrel, 1];
	};

// LOADOUT: MEDIUM MG AMMO BEARER
	case "mmgab":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_carbinemag, 1];
		_unit addWeapon _carbine;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _carbinemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_MMGmag, 7];
		(unitBackpack _unit) addItemCargoGlobal [_MMGmag_tr, 3];
	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_headset_ucp";

		// Primary Weapon, loaded
		_unit addMagazines [_carbinemag, 1];
		_unit addWeapon _carbine;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		_unit addVest "rhsusf_iotv_ucp_teamleader";
		{_unit addItemToVest _carbinemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _smokegrenadegreen} forEach [1];
		{_unit addItemToVest _smokegrenadeblue} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];

		// Backpack Gear
		_unit addBackpack _baghmgag;
	};

// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_carbinemag, 1];
		_unit addWeapon _carbine;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _carbinemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _baghmgg;
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_headset_ucp";

		// Primary Weapon, loaded
		_unit addMagazines [_glriflemag, 1];
		_unit addMagazines [_glsmokewhite, 1];
		_unit addWeapon _glrifle;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		_unit addVest "rhsusf_iotv_ucp_teamleader";
		{_unit addItemToVest _riflemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _riflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _cableties} forEach [1,2];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_glsmokewhite, 10];
		(unitBackpack _unit) addItemCargoGlobal [_glsmokered, 5];
		(unitBackpack _unit) addItemCargoGlobal [_glflarered, 10];
		(unitBackpack _unit) addItemCargoGlobal [_Mgrenade, 2];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenade, 3];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadegreen, 5];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) addItemCargoGlobal [_irstrobe, 1];
	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_ess_ucp";

		// Primary Weapon, loaded
		_unit addMagazines [_carbinemag, 1];
		_unit addWeapon _carbine;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _carbinemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_MATmag1, 3];
		(unitBackpack _unit) addItemCargoGlobal [_MATmag2, 2];

		// MAT Launcher, loaded
		_unit addWeapon _MAT;
		_unit addSecondaryWeaponItem "tf47_optic_m3maaws";
		_unit addMagazines [_MATmag1, 1];
	};

// LOADOUT: MEDIUM AT AMMO BEARER
	case "matab":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_carbinemag, 1];
		_unit addWeapon _carbine;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _carbinemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_MATmag1, 3];
		(unitBackpack _unit) addItemCargoGlobal [_MATmag2, 2];
	};

// LOADOUT: HEAVY AT ASSISTANT GUNNER
	case "hatag":
	{

	};

// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{

	};

// LOADOUT: MCC GAME MASTER
	case "mcc":
	{
		// Patrol Cap
		_unit addHeadgear "H_Beret_Colonel";

		// Special Equipment
		_unit linkItem "ItemGPS";

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];

		// Vest Gear
		_unit addVest "rhsusf_iotv_ucp_squadleader";
		{_unit addItemToVest _cableties} forEach [1,2];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];
		{_unit addItemToVest _mediumrangeradio2} forEach [1];
	};

// LOADOUT: TRAINER SLOT
	case "tr":
	{
		// Patrol Cap
		_unit addHeadgear "rhsusf_patrolcap_ucp";

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		_unit addVest "rhsusf_iotv_ucp_squadleader";
		{_unit addItemToVest _epipen} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _bloodbag} forEach [1,2,3,4,5];
		{_unit addItemToVest _cableties} forEach [1,2];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_headset_ucp";

		// Primary Weapon, loaded
		_unit addMagazines [_carbinemag, 1];
		_unit addWeapon _carbine;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		_unit addVest "rhsusf_iotv_ucp_teamleader";
		{_unit addItemToVest _carbinemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _smokegrenadegreen} forEach [1];
		{_unit addItemToVest _smokegrenadeblue} forEach [1];
		{_unit addItemToVest _rangetable} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmtrag;
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_carbinemag, 1];
		_unit addWeapon _carbine;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _carbinemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _rangetable} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmtrg;
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

// LOADOUT: DESIGNATED MARKSMAN
	case "dm":
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
		// Primary Weapon, loaded
		_unit addMagazines [_smgmag, 1];
		_unit addWeapon _smg;
		_attachments = [];						// Removes standard attachments

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";
		_unit linkItem _nvgwide;

		// Uniform Gear
		_unit forceAddUniform "TRYK_U_B_GRTANR_CombatUniformTshirt";
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _smgmag} forEach [1,2,3,4,5];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _smokegrenadegreen} forEach [1];
		{_unit addItemToVest _smokegrenadeblue} forEach [1];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];
		{_unit addItemToVest _mediumrangeradio2} forEach [1];
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_smgmag, 1];
		_unit addWeapon _smg;
		_attachments = [];						// Removes standard attachments

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special equipment
		_unit linkItem "ItemGPS";
		_unit linkItem _nvgwide;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _smgmag} forEach [1,2,3,4,5];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _smokegrenadegreen} forEach [1];
		{_unit addItemToVest _smokegrenadeblue} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["Toolkit", 1];
		(unitBackpack _unit) addItemCargoGlobal [_smgmag, 2];
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_smgmag, 1];
		_unit addWeapon _smg;
		_attachments = [];						// Removes standard attachments

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special equipment
		_unit linkItem "ItemGPS";
		_unit linkItem _nvgwide;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _smgmag} forEach [1,2,3,4,5];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _smokegrenadegreen} forEach [1];
		{_unit addItemToVest _smokegrenadeblue} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_smgmag, 1];
		_unit addWeapon _smg;
		_attachments = [];						// Removes standard attachments

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";
		_unit linkItem _nvgwide;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _smgmag} forEach [1,2,3,4,5];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _smokegrenadegreen} forEach [1];
		{_unit addItemToVest _smokegrenadeblue} forEach [1];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];
		{_unit addItemToVest _mediumrangeradio2} forEach [1];
	};

// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{
		_unit addHeadgear "H_CrewHelmetHeli_B";

		// Primary Weapon, loaded
		_unit addMagazines [_smgmag, 1];
		_unit addWeapon _smg;
		_attachments = [];						// Removes standard attachments

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Special equipment
		_unit linkItem "ItemGPS";
		_unit linkItem _nvgwide;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _smgmag} forEach [1,2,3,4,5];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _smokegrenadegreen} forEach [1];
		{_unit addItemToVest _smokegrenadeblue} forEach [1];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];
		{_unit addItemToVest _mediumrangeradio2} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["Toolkit", 1];
		(unitBackpack _unit) addItemCargoGlobal [_smgmag, 2];
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{

	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_riflemag, 1];
		_unit addWeapon _rifle;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _riflemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _riflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["MineDetector", 1];

	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{

	};

// LOADOUT: Diver
	case "div":
	{

	};

// LOADOUT: CARABINIER
	case "car":
	{

	};

// LOADOUT: SUBMACHINE GUNNER
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
		_unit addItemCargoGlobal [_bandages, 48];
		_unit addItemCargoGlobal [_morphine, 12];
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
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
		_unit addMagazineCargoGlobal [_ARmag, 16];
		_unit addMagazineCargoGlobal [_MMGmag, 5];
		_unit addWeaponCargoGlobal [_RAT, 4];
		_unit addMagazineCargoGlobal [_MATMag1, 5];
		_unit addMagazineCargoGlobal [_MATMag2, 2];

		_unit addItemCargoGlobal [_bandages, 40];
		_unit addItemCargoGlobal [_morphine, 30];
		_unit addItemCargoGlobal [_epipen, 20];
		_unit addItemCargoGlobal [_bloodbag, 8];
	};

// CARGO: AMMO TRUCK - room for 50 weapons and 200 cargo items
	case "v_atr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;

		_unit addMagazineCargoGlobal [_ATmine1, 30];
		_unit addMagazineCargoGlobal [_ATmine2, 30];
		_unit addMagazineCargoGlobal [_APmine1, 30];
		_unit addMagazineCargoGlobal [_APmine2, 30];
		_unit addMagazineCargoGlobal [_APmine3, 30];
		_unit addMagazineCargoGlobal [_claymore, 30];
		_unit addMagazineCargoGlobal [_IED, 20];
		_unit addMagazineCargoGlobal [_IEDBig, 10];
		_unit addMagazineCargoGlobal [_IEDUrban, 20];
		_unit addMagazineCargoGlobal [_IEDUrbanBig, 10];
		_unit addMagazineCargoGlobal [_charge, 20];
		_unit addMagazineCargoGlobal [_satchel, 10];

		_unit addBackpackCargoGlobal [_baglarge, 20];
	};

// CARGO: MEDICAL TRUCK - room for 50 weapons and 200 cargo items
	case "v_mtr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;

		_unit addItemCargoGlobal [_bandages, 200];
		_unit addItemCargoGlobal [_morphine, 100];
		_unit addItemCargoGlobal [_epipen, 100];
		_unit addItemCargoGlobal [_bloodbag, 50];

		_unit addBackpackCargoGlobal [_baglarge, 10];
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
		_unit addMagazineCargoGlobal [_ARmag, 16];
		_unit addMagazineCargoGlobal [_MMGmag, 5];
		_unit addWeaponCargoGlobal [_RAT, 4];
		_unit addMagazineCargoGlobal [_MATMag1, 5];
		_unit addMagazineCargoGlobal [_MATMag2, 2];

		_unit addItemCargoGlobal [_bandages, 40];
		_unit addItemCargoGlobal [_morphine, 30];
		_unit addItemCargoGlobal [_epipen, 20];
		_unit addItemCargoGlobal [_bloodbag, 8];
	};

// CRATE: Large, ammo for 1 platoon
	case "crate_large":
	{

	};
END COMMENT */
// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
   		/* DEFAULT ENTRY
		// Primary Weapon, loaded
		_unit addMagazines [_riflemag, 1];
		_unit addWeapon _rifle;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _riflemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _riflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\f_assignGear_nato.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
		*/
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
