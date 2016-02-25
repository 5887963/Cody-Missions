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

// ATTACHMENTS - PRIMARY WEAPON
_attach1 = "";	// IR Laser
_attach2 = "";	// Flashlight

_silencer1 = "";	// 5.56 suppressor
_silencer2 = "";	// 6.5 suppressor

_scope1 = "";		// ACO
_scope2 = "";			// MRCO Scope - 1x - 6x
_scope3 = "";			// SOS Scope - 18x - 75x

_bipod1 = "";		// Default bipod
_bipod2 = "";		// Black bipod

// Default setup
_attachments = []; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_L";	// 9mm suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Rifle
_rifle = "rhs_weap_ak74";
_riflemag = "rhs_30Rnd_545x39_AK";
_riflemag_tr = "rhs_30Rnd_545x39_AK_green";

// Carbine (Medic - Rifleman AT - MAT Gunner)
_carbine = "rhs_weap_aks74u";
_carbinemag = "rhs_30Rnd_545x39_AK";
_carbinemag_tr = "rhs_30Rnd_545x39_AK_green";

// Submachine Gun (Vehicle Commander - Vehicle Driver - Vehicle Gunner - Air Vehicle Pilot - Air Vehicle Crew)
_smg = "SMG_02_F";
_smgmag = "30Rnd_9x21_Mag";
// _smgmag_tr = "";

// Diver Rifle
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle and Carbine with Grenade Launcher (Squad Leader - Fireteam Leader - Commander)
_glrifle = "rhs_weap_ak74_gp25";
_glriflemag = "rhs_30Rnd_545x39_AK";
_glriflemag_tr = "rhs_30Rnd_545x39_AK_green";
_glmag = "rhs_VOG25";

// Grenade Launcher Smokes
_glsmokewhite = "rhs_GRD40_White";
_glsmokegreen = "rhs_GRD40_Green";
_glsmokered = "rhs_GRD40_Red";

// Grenade Launcher Flares
_glflarewhite = "rhs_VG40OP_white";
_glflarered = "rhs_VG40OP_red";
_glflaregreen = "rhs_VG40OP_green";

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
_fieldglasses = "Binocular";

// Night Vision Goggles
_nvg = "rhsusf_ANPVS_15";
_nvgwide = "ACE_NVG_Wide";

// UAV Terminal
_uavterminal = "O_UavTerminal";

// Backpacks
_bagsmall = "B_AssaultPack_rgr";			// carries 120, weighs 20
_bagmedium = "B_Kitbag_rgr";				// carries 200, weighs 30
_baglarge =  "B_Carryall_khk"; 				// carries 320, weighs 40
_medbag = "TRYK_B_Medbag_OD";
_bagmediumdiver =  "B_AssaultPack_blk";		// used by divers
_baguav = "O_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "O_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag = "O_HMG_01_support_F";			// used by Heavy MG assistant gunner
_baghatg = "O_AT_01_weapon_F";				// used by Heavy AT gunner
_baghatag = "O_HMG_01_support_F";			// used by Heavy AT assistant gunner
_bagmtrg = "O_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "O_Mortar_01_support_F";		// used by Mortar assistant gunner
_baghsamg = "O_AA_01_weapon_F";				// used by Heavy SAM gunner
_baghsamag = "O_HMG_01_support_F";			// used by Heavy SAM assistant gunner

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "hlc_rifle_rpk";
_ARmag = "hlc_75Rnd_762x39_m_rpk";

// Medium MG
_MMG = "rhs_weap_pkm";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// NON-DLC ALTERNATIVE:
//_MMG = "LMG_Zafir_F";
//_MMGmag = ""150Rnd_762x54_Box"";
//_MMGmag_tr = "150Rnd_762x54_Box_Tracer";

// Marksman rifle
_DMrifle = "srifle_DMR_05_hex_F";
_DMriflemag = "10Rnd_93x64_DMR_05_Mag";

// ASP1-KIR
// _DMrifle = "srifle_DMR_04_F";
// _DMriflemag = "10Rnd_127x54_Mag";

// Rifleman AT
_RAT = "rhs_weap_rpg26";
_RATmag = "rhs_rpg26_mag";

// Medium AT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_OG7V_mag";
_MATmag3 = "rhs_rpg7_PG7VR_mag";
_MATmag4 = "rhs_rpg7_TBG7V_mag";

// Surface Air
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Heavy AT
_HAT = "";
_HATmag1 = "";

// Sniper
_SNrifle = "srifle_GM6_F";
_SNrifleMag = "5Rnd_127x108_Mag";

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
_baseUniform = ["rhs_uniform_flora_patchless","rhs_uniform_flora_patchless_alt"];
_baseHelmet = ["rhs_6b27m_green","rhs_6b27m_green_ess","rhs_6b28_green","rhs_6b28_green_ess","rhs_6b26","rhs_6b26_ess"];
_baseGlasses = [];

// Urban
//_baseUniform = ["U_O_CombatUniform_oucamo"];
//_baseHelmet = ["H_HelmetO_oucamo"];

// Vests
_lightRig = ["V_HarnessO_brn"];
_mediumRig = ["rhs_6b23_6sh92","rhs_6b23_digi_6sh92"]; 	// default for all infantry classes
_heavyRig = _mediumRig;

// Diver
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["rhs_uniform_m88_patchless"];
_pilotHelmet = ["H_PilotHelmetHeli_O"];
_pilotRig = ["rhs_vydra_3m"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["rhs_uniform_emr_patchless"];
_crewHelmet = ["rhs_tsh4","rhs_tsh4_ess"];
_crewRig = ["rhs_6b23_crew"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_O_GhillieSuit"]; //DLC alternatives: ["U_O_FullGhillie_lsh","U_O_FullGhillie_ard","U_O_FullGhillie_sard"];
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
//	_unit linkItem "ItemGPS"; 	// Add and equip a GPS

};

// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

// 	_backpack = {
//	_typeofBackPack = _this select 0;
//	_loadout = f_param_backpacks;
//	if (count _this > 1) then {_loadout = _this select 1};
//	switch (_typeofBackPack) do
//	{
//		#include "f_assignGear_csat_b.sqf";
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
		// Patrol Cap
		_unit addHeadgear "rhs_fieldcap_digi";

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
		_unit addVest "rhs_6b23_6sh92_headset_mapcase";
		{_unit addItemToVest _glriflemag} forEach [1,2];
		{_unit addItemToVest _glriflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _cableties} forEach [1,2];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_glriflemag, 8];
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
		{_unit addItemToVest _carbinemag} forEach [1,2];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];
		{_unit addItemToVest _mediumrangeradio2} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_carbinemag, 8];
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
		{_unit addItemToVest _carbinemag} forEach [1,2,3,4,5];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest "Laserbatteries"} forEach [1,2];

		// Backpack Gear
		_unit addBackpack _baguav;
	};

// LOADOUT: SQUAD LEADER
	case "dc":
	{
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
		_unit addVest "rhs_6b23_6sh92_headset_mapcase";
		{_unit addItemToVest _glriflemag} forEach [1,2];
		{_unit addItemToVest _glriflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _cableties} forEach [1,2];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_glriflemag, 8];
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
		_unit addVest "rhs_6b23_medic";
		{_unit addItemToVest _carbinemag} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _medbag;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_carbinemag_tr, 4];
		(unitBackpack _unit) addItemCargoGlobal [_bandages, 40];
		(unitBackpack _unit) addItemCargoGlobal [_morphine, 30];
		(unitBackpack _unit) addItemCargoGlobal [_epipen, 20];
		(unitBackpack _unit) addItemCargoGlobal [_bloodbag, 4];
		(unitBackpack _unit) addItemCargoGlobal [_Mgrenade, 2];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenade, 16];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadegreen, 4];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) addItemCargoGlobal [_irstrobe, 1];
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
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
		_unit addVest "rhs_6b23_6sh92_vog_headset";
		{_unit addItemToVest _glriflemag} forEach [1,2];
		{_unit addItemToVest _glriflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _cableties} forEach [1,2];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_glriflemag, 8];
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
		{_unit addItemToUniform _smokegrenade} forEach [1,2];

		// Vest Gear
		{_unit addItemToVest _ARmag} forEach [1,2,3,4,5];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_ARmag, 6];
		(unitBackpack _unit) addItemCargoGlobal [_ARmag_tr, 4];
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
		_unit addVest "rhs_6b23_6sh92_radio";
		{_unit addItemToVest _riflemag} forEach [1,2,3,4];
		{_unit addItemToVest _riflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _cableties} forEach [1,2];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_ARmag, 7];
		(unitBackpack _unit) addItemCargoGlobal [_riflemag, 14];
		(unitBackpack _unit) addItemCargoGlobal [_riflemag_tr, 2];
		(unitBackpack _unit) addItemCargoGlobal [_Mgrenade, 2];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenade, 3];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadegreen, 2];
		(unitBackpack _unit) addItemCargoGlobal [_smokegrenadeblue, 1];
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		// Primary Weapon, loaded
		_unit addMagazines [_carbinemag, 1];
		_unit addWeapon _carbine;

		// Secondary Weapon, loaded
		_unit addMagazines [_pistolmag, 1];
		_unit addWeapon _pistol;

		// Light AT Launcher, loaded
		_unit addMagazines [_RATmag, 1];
		_unit addWeapon _RAT;

		// Uniform Gear
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		{_unit addItemToVest _carbinemag} forEach [1,2];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_carbinemag, 8];
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
		{_unit addItemToVest _riflemag} forEach [1,2];
		{_unit addItemToVest _riflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_glmag, 10];
		(unitBackpack _unit) addItemCargoGlobal [_riflemag, 16];
		(unitBackpack _unit) addItemCargoGlobal [_riflemag_tr, 2];
		(unitBackpack _unit) addItemCargoGlobal [_Mgrenade, 6];
	};

// LOADOUT: MEDIUM MG TEAM LEADER
	case "mmgag":
	{
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
		_unit addVest "rhs_6b23_6sh92_vog_headset";
		{_unit addItemToVest _glriflemag} forEach [1,2];
		{_unit addItemToVest _glriflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _cableties} forEach [1,2];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_glriflemag, 8];
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
		{_unit addItemToVest _MMGmag} forEach [1];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_MMGmag, 4];
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
		{_unit addItemToVest _carbinemag} forEach [1,2,3];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_carbinemag, 7];
		(unitBackpack _unit) addItemCargoGlobal [_MMGmag, 5];
	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{

	};

// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{

	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
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
		_unit addVest "rhs_6b23_6sh92_vog_headset";
		{_unit addItemToVest _glriflemag} forEach [1,2];
		{_unit addItemToVest _glriflemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _cableties} forEach [1,2];
		{_unit addItemToVest _maptools} forEach [1];
		{_unit addItemToVest _shortrangeradio} forEach [1];
		{_unit addItemToVest _mediumrangeradio1} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_glriflemag, 8];
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
		{_unit addItemToVest _carbinemag} forEach [1,2];
		{_unit addItemToVest _carbinemag_tr} forEach [1,2,3,4];
		{_unit addItemToVest _Mgrenade} forEach [1,2];
		{_unit addItemToVest _shortrangeradio} forEach [1];

		// Backpack Gear
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_carbinemag, 8];
		(unitBackpack _unit) addItemCargoGlobal [_MATmag1, 3];
		(unitBackpack _unit) addItemCargoGlobal [_MATmag2, 2];

		// MAT Launcher, loaded
		_unit addWeapon _MAT;
		_unit addSecondaryWeaponItem "rhs_acc_pgo7v";
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
		_unit addVest "rhs_6b23_6sh92_headset_mapcase";
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
		_unit addHeadgear "rhs_fieldcap_digi";

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

	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
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
		{_unit addItemToUniform _bandages} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItemToUniform _morphine} forEach [1,2];
		{_unit addItemToUniform _pistolmag} forEach [1,2];
		{_unit addItemToUniform _smokegrenade} forEach [1,2,3,4];

		// Vest Gear
		_unit addVest "rhs_6b23_crewofficer";
		{_unit addItemToVest _smgmag} forEach [1,2,3];
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
		{_unit addItemToVest _smgmag} forEach [1,2,3];
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
		{_unit addItemToVest _smgmag} forEach [1,2,3];
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
		{_unit addItemToVest _smgmag} forEach [1,2,3];
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
		_unit addHeadgear "H_CrewHelmetHeli_O";

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
		{_unit addItemToVest _smgmag} forEach [1,2,3];
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
		_unit addMagazineCargoGlobal [_RATmag, 2];
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
		_unit addMagazineCargoGlobal [_RATmag, 4];
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
		_unit addMagazineCargoGlobal [_RATmag, 4];
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
