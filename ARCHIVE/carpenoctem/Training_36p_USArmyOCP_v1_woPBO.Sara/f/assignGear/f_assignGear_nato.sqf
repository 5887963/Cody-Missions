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
//		v_ifv		- IFV
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

// Default setup
_attachments = [_attach1]; // The default attachment set for most units, overwritten in the individual unitType

// Examples below:
// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_acp";	// .45 M1911 Suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Rifle (Asst. AR - MMG Asst. Gunner - MAT Asst. Gunner - Rifleman - Trainer - MCC GM - Commander)
_rifle = "rhs_weap_m16a4_carryhandle_grip_pmag";
_riflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_riflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// Carbine (Medic - Rifleman AT - MAT Gunner)
_carbine = "rhs_weap_m4_carryhandle_pmag";
_carbinemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_carbinemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// Submachine Gun (Vehicle Commander - Vehicle Driver - Vehicle Gunner - Air Vehicle Pilot - Air Vehicle Crew)
_smg = "SMG_02_F";
_smgmag = "30Rnd_9x21_Mag";
// _smgmag_tr = "30Rnd_45ACP_Mag_SMG_01_tracer_green";

// Diver Rifle
// _diverWep = "arifle_SDAR_F";
// _diverMag1 = "30Rnd_556x45_Stanag";
// _diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle and Carbine with Grenade Launcher (Squad Leader - Fireteam Leader - MMG Grenadier - MAT Grenadier)
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
_mediumrangeradio = "ACRE_PRC148";
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
_AR = "rhs_weap_m249_pip_L";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
// _ARmag_tr = "rhs_200rnd_556x45_T_SAW";

// Medium MG
_MMG = "hlc_lmg_m60";
_MMGmag = "hlc_100Rnd_762x51_M_M60E4";
_MMGmag_tr = "hlc_100Rnd_762x51_T_M60E4";

// Light AT Launcher
_RAT = "rhs_weap_M136";
_RATmag = "rhs_m136_mag";

// Medium AT Launcher
_MAT = "tf47_m3maaws";
_MATmag1 = "tf47_m3maaws_HEAT";
_MATmag2 = "tf47_m3maaws_HEDP";
_MATmag3 = "tf47_m3maaws_HE";
_MATmag4 = "tf47_m3maaws_ILLUM";
_MATmag5 = "tf47_m3maaws_SMOKE";

// Heavy AT Launcher
_HAT = "rhs_weap_fgm148";
_HATmag = "rhs_fgm148_magazine_AT";

// Surface to Air Missile Launcher
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Sniper
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
_baseUniform = ["rhs_uniform_cu_ocp"];
_baseHelmet = ["rhsusf_ach_helmet_ocp","rhsusf_ach_helmet_ESS_ocp"];
_baseGlasses = [];

// Armoured vests
_lightRig = ["V_TacVest_blk","V_TacVest_brn","V_TacVest_camo","V_TacVest_oli"];
_mediumRig = ["rhsusf_iotv_ocp_Rifleman"]; 	// default for all infantry classes
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
_crewUniform = ["U_B_CombatUniform_mcam_vest"];
_crewHelmet = ["H_HelmetCrew_B"];
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
//	_typeofBackPack = _this select 0;
//	_loadout = f_param_backpacks;
//	if (count _this > 1) then {_loadout = _this select 1};
//	switch (_typeofBackPack) do
//	{
//		#include "f_assignGear_nato_b.sqf";
//	};
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
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
		
		// M16A4 M203, loaded
		_unit addmagazines [_glriflemag, 1];
		_unit addmagazines [_glmag, 1];
		_unit addweapon _glrifle;
		
		// M1911, loaded
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
		_unit addVest "rhsusf_iotv_ocp_Squadleader";
		for "_i" from 1 to 10 do {this addItemToVest _glriflemag;};
		for "_i" from 1 to 4 do {this addItemToVest _glriflemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _cableties;};
		for "_i" from 1 to 1 do {this addItemToVest _maptools;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_longrangeradio, 1];
		(unitBackpack _unit) additemCargoGlobal [_glmag, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokewhite, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokered, 4];
		(unitBackpack _unit) additemCargoGlobal [_glflarered, 7];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadegreen, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) additemCargoGlobal [_irstrobe, 1];
	};

// LOADOUT: MEDIC
	case "m":
	{		
		// M4, loaded
		_unit addmagazines [_carbinemag, 1];
		_unit addweapon _carbine;
		
		// M1911, loaded
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
		_unit addVest "rhsusf_iotv_ocp_Medic";
		for "_i" from 1 to 10 do {this addItemToVest _carbinemag;};
		for "_i" from 1 to 4 do {this addItemToVest _carbinemag_tr;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _medbag;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_bandages, 40];
		(unitBackpack _unit) additemCargoGlobal [_morphine, 30];
		(unitBackpack _unit) additemCargoGlobal [_epipen, 20];
		(unitBackpack _unit) additemCargoGlobal [_bloodbag, 8];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 20];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadegreen, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) additemCargoGlobal [_irstrobe, 1];
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
		
		// M16A4 M203, loaded
		_unit addmagazines [_glriflemag, 1];
		_unit addmagazines [_glmag, 1];
		_unit addweapon _glrifle;
		
		// M1911, loaded
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
		_unit addVest "rhsusf_iotv_ocp_Grenadier";
		for "_i" from 1 to 10 do {this addItemToVest _glriflemag;};
		for "_i" from 1 to 4 do {this addItemToVest _glriflemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _cableties;};
		for "_i" from 1 to 1 do {this addItemToVest _maptools;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};

		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_glmag, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokewhite, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokered, 4];
		(unitBackpack _unit) additemCargoGlobal [_glflarered, 7];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadegreen, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) additemCargoGlobal [_irstrobe, 1];
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		// M249 PIP, loaded
		_unit addmagazines [_ARmag, 1];
		_unit addweapon _AR;
		
		// M1911, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		_unit addVest "rhsusf_iotv_ocp_SAW";
		for "_i" from 1 to 3 do {this addItemToVest _ARmag;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_ARmag, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 2];
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{		
		// M16A4, loaded
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		
		// M1911, loaded
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
		_unit addVest "rhsusf_iotv_ocp_Teamleader";
		for "_i" from 1 to 10 do {this addItemToVest _riflemag;};
		for "_i" from 1 to 4 do {this addItemToVest _riflemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _cableties;};
		for "_i" from 1 to 1 do {this addItemToVest _maptools;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_ARmag, 4];
		(unitBackpack _unit) additemCargoGlobal [_riflemag, 8];
		(unitBackpack _unit) additemCargoGlobal [_riflemag_tr, 2];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadegreen, 2];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 1];
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_ESS_ocp";
		
		// M4, loaded
		_unit addmagazines [_carbinemag, 1];
		_unit addweapon _carbine;
		
		// M1911, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// AT4, loaded
		_unit addmagazines [_RATmag, 1];
		_unit addweapon _RAT;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		for "_i" from 1 to 10 do {this addItemToVest _carbinemag;};
		for "_i" from 1 to 4 do {this addItemToVest _carbinemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
	};
	
// LOADOUT: RIFLEMAN
	case "r":
	{
		// M16A4, loaded
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		
		// M1911, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		for "_i" from 1 to 10 do {this addItemToVest _riflemag;};
		for "_i" from 1 to 4 do {this addItemToVest _riflemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_glmag, 10];
		(unitBackpack _unit) additemCargoGlobal [_riflemag, 8];
		(unitBackpack _unit) additemCargoGlobal [_riflemag_tr, 2];
		(unitBackpack _unit) additemCargoGlobal [_Mgrenade, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 2];
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
		
		// M16A4, loaded
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		
		// M1911, loaded
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
		_unit addVest "rhsusf_iotv_ocp_Teamleader";
		for "_i" from 1 to 10 do {this addItemToVest _riflemag;};
		for "_i" from 1 to 4 do {this addItemToVest _riflemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _cableties;};
		for "_i" from 1 to 1 do {this addItemToVest _maptools;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		for "_i" from 1 to 1 do {this addItemToVest _mediumrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_MMGmag, 6];
		(unitBackpack _unit) additemCargoGlobal [_MMGmag_tr, 2];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadegreen, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) additemCargoGlobal [_irstrobe, 1];
	};
	
// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		// M60, loaded
		_unit addmagazines [_MMGmag, 1];
		_unit addweapon _MMG;
		
		// M1911, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		_unit addVest "rhsusf_iotv_ocp_SAW";
		for "_i" from 1 to 2 do {this addItemToVest _MMGmag;};
		for "_i" from 1 to 1 do {this addItemToVest _MMGmag_tr;};
		for "_i" from 1 to 4 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_MMGmag, 3];
		(unitBackpack _unit) additemCargoGlobal [_MMGmag_tr, 1];
		(unitBackpack _unit) additemCargoGlobal [_barrel, 1];
	};
	
// LOADOUT: MEDIUM MG GRENADIER
	case "mmggr":
	{
		// M4 M203, loaded
		_unit addmagazines [_glcarbinemag, 1];
		_unit addmagazines [_glmag, 1];
		_unit addweapon _glcarbine;
		
		// M1911, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		_unit addVest "rhsusf_iotv_ocp_Grenadier";
		for "_i" from 1 to 10 do {this addItemToVest _glcarbinemag;};
		for "_i" from 1 to 4 do {this addItemToVest _glcarbinemag_tr;};
		for "_i" from 1 to 4 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_glmag, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokewhite, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokered, 4];
		(unitBackpack _unit) additemCargoGlobal [_glflarered, 7];
		(unitBackpack _unit) additemCargoGlobal [_MMGmag, 2];
	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
		
		// M4, loaded
		_unit addmagazines [_carbinemag, 1];
		_unit addweapon _carbine;
		
		// M1911, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 3 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		_unit addVest "rhsusf_iotv_ocp_Teamleader";
		for "_i" from 1 to 10 do {this addItemToVest _carbinemag;};
		for "_i" from 1 to 4 do {this addItemToVest _carbinemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		for "_i" from 1 to 1 do {this addItemToVest _mediumrangeradio;};
		
		// Backpack Gear
		_unit addBackpack "RHS_M2_MiniTripod_Bag";
	};	
	
// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		// M4, loaded
		_unit addmagazines [_carbinemag, 1];
		_unit addweapon _carbine;
		
		// M1911, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 3 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		for "_i" from 1 to 10 do {this addItemToVest _carbinemag;};
		for "_i" from 1 to 4 do {this addItemToVest _carbinemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack "RHS_M2_Gun_Bag";
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
		
		// M16A4, loaded
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		
		// M1911, loaded
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
		_unit addVest "rhsusf_iotv_ocp_Teamleader";
		for "_i" from 1 to 10 do {this addItemToVest _riflemag;};
		for "_i" from 1 to 4 do {this addItemToVest _riflemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _cableties;};
		for "_i" from 1 to 1 do {this addItemToVest _maptools;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		for "_i" from 1 to 1 do {this addItemToVest _mediumrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) additemCargoGlobal [_MATmag2, 2];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadegreen, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) additemCargoGlobal [_irstrobe, 1];
	};
	
// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_ESS_ocp";
		
		// M4, loaded
		_unit addmagazines [_carbinemag, 1];
		_unit addweapon _carbine;
		
		// M1911, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		for "_i" from 1 to 10 do {this addItemToVest _carbinemag;};
		for "_i" from 1 to 4 do {this addItemToVest _carbinemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_MATmag1, 3];
		(unitBackpack _unit) additemCargoGlobal [_MATmag2, 2];
		
		// Carl Gustav, loaded
		_unit addweapon _MAT;
		_unit addSecondaryWeaponItem "tf47_optic_m3maaws";
		_unit addmagazines [_MATmag1, 1];
	};
	
// LOADOUT: MEDIUM AT GRENADIER
	case "matgr":
	{
		// M4 M203, loaded
		_unit addmagazines [_glcarbinemag, 1];
		_unit addmagazines [_glmag, 1];
		_unit addweapon _glcarbine;
		
		// M1911, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		_unit addVest "rhsusf_iotv_ocp_Grenadier";
		for "_i" from 1 to 10 do {this addItemToVest _glcarbinemag;};
		for "_i" from 1 to 4 do {this addItemToVest _glcarbinemag_tr;};
		for "_i" from 1 to 4 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_glmag, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokewhite, 7];
		(unitBackpack _unit) additemCargoGlobal [_glsmokered, 4];
		(unitBackpack _unit) additemCargoGlobal [_glflarered, 7];
		(unitBackpack _unit) additemCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) additemCargoGlobal [_MATmag2, 1];
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
		_unit addHeadgear "rhsusf_patrolcap_ocp";
		
		// M16A4, loaded
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		
		// M1911, loaded
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
		_unit addVest "rhsusf_iotv_ocp_Squadleader";
		for "_i" from 1 to 10 do {this addItemToVest _riflemag;};
		for "_i" from 1 to 4 do {this addItemToVest _riflemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _cableties;};
		for "_i" from 1 to 1 do {this addItemToVest _maptools;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		for "_i" from 1 to 1 do {this addItemToVest _mediumrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_morphine, 2];
		(unitBackpack _unit) additemCargoGlobal [_epipen, 7];
		(unitBackpack _unit) additemCargoGlobal [_bloodbag, 3];
	};
	
// LOADOUT: TRAINER SLOT
	case "tr":
	{
		// Patrol Cap
		_unit addHeadgear "rhsusf_patrolcap_ocp";
		
		// M16A4, loaded
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		
		// M1911, loaded
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
		_unit addVest "rhsusf_iotv_ocp_Squadleader";
		for "_i" from 1 to 10 do {this addItemToVest _riflemag;};
		for "_i" from 1 to 4 do {this addItemToVest _riflemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _cableties;};
		for "_i" from 1 to 1 do {this addItemToVest _maptools;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		for "_i" from 1 to 1 do {this addItemToVest _mediumrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_morphine, 2];
		(unitBackpack _unit) additemCargoGlobal [_epipen, 7];
		(unitBackpack _unit) additemCargoGlobal [_bloodbag, 3];
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		// Helmet
		_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
		
		// M4, loaded
		_unit addmagazines [_carbinemag, 1];
		_unit addweapon _carbine;
		
		// M1911, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Special Equipment
		_unit addWeapon _fieldglasses;
		_unit linkItem "ItemGPS";
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 3 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		_unit addVest "rhsusf_iotv_ocp_Teamleader";
		for "_i" from 1 to 10 do {this addItemToVest _carbinemag;};
		for "_i" from 1 to 4 do {this addItemToVest _carbinemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		for "_i" from 1 to 1 do {this addItemToVest _mediumrangeradio;};
		for "_i" from 1 to 1 do {this addItemToVest _rangetable;};
		
		// Backpack Gear
		_unit addBackpack "O_Mortar_01_support_F";
	};	
	
// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		// M4, loaded
		_unit addmagazines [_carbinemag, 1];
		_unit addweapon _carbine;
		
		// M1911, loaded
		_unit addmagazines [_pistolmag, 1];
		_unit addweapon _pistol;
		
		// Uniform Gear
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 3 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		for "_i" from 1 to 10 do {this addItemToVest _carbinemag;};
		for "_i" from 1 to 4 do {this addItemToVest _carbinemag_tr;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		for "_i" from 1 to 1 do {this addItemToVest _rangetable;};
		
		// Backpack Gear
		_unit addBackpack "O_Mortar_01_weapon_F";
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
		// Helmet
		_unit addHeadgear "H_HelmetCrew_I";
		
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
		_unit forceAddUniform "TRYK_U_B_GRTANR_CombatUniformTshirt";
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
		(unitBackpack _unit) additemCargoGlobal [_smgmag, 4];
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		// Helmet
		_unit addHeadgear "H_HelmetCrew_I";
		
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
		_unit forceAddUniform "TRYK_U_B_GRTAN_CombatUniform";
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		for "_i" from 1 to 4 do {this addItemToVest _smgmag;};
		for "_i" from 1 to 4 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenadegreen;};
		for "_i" from 1 to 1 do {this addItemToVest _smokegrenadeblue;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
		
		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal ["Toolkit", 1];
		(unitBackpack _unit) additemCargoGlobal [_smgmag, 5];
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		// Helmet
		_unit addHeadgear "H_HelmetCrew_I";
		
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
		_unit forceAddUniform "TRYK_U_B_GRTAN_CombatUniform";
		for "_i" from 1 to 8 do {this addItemToUniform _bandages;};
		for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {this addItemToUniform _pistolmag;};
		for "_i" from 1 to 2 do {this addItemToUniform _Mgrenade;};
		
		// Vest Gear
		for "_i" from 1 to 7 do {this addItemToVest _smgmag;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 1 do {this addItemToVest _shortrangeradio;};
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
		for "_i" from 1 to 7 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenadegreen;};
		for "_i" from 1 to 1 do {this addItemToVest _smokegrenadeblue;};
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
		_unit addHeadgear "H_CrewHelmetHeli_B";
		
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
		for "_i" from 1 to 7 do {this addItemToVest _smokegrenade;};
		for "_i" from 1 to 2 do {this addItemToVest _smokegrenadegreen;};
		for "_i" from 1 to 1 do {this addItemToVest _smokegrenadeblue;};
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

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\f_assignGear_nato.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
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
