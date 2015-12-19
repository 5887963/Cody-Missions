// F3 - Folk Assign Gear Script - CSAT
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co		- commander
//		dc 		- deputy commander
//		m 		- medic
//		ftl		- fire team leader
//		ar 		- automatic rifleman
//		aar		- assistant automatic rifleman
//		rat		- rifleman (AT)
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		p		- air vehicle pilots
//		eng		- engineers
//		div    		- divers
//
//		r 		- rifleman
//		car		- carabineer
//		smg		- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES


// Attachments
// nil = no change
// [] = remove all
// ["acc_pointer_IR","optic_ACO_grn"] = remove all, add items.

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "arifle_Katiba_F";
_riflemag = "30Rnd_65x39_caseless_green";
_riflemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";
_rifle_attach = ["acc_flashlight","optic_ACO_grn"];

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "arifle_Katiba_C_F";
_carbinemag = "30Rnd_65x39_caseless_green";
_carbinemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";
_carbine_attach = ["acc_flashlight","optic_ACO_grn"];

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "arifle_Katiba_GL_F";
_glriflemag = "30Rnd_65x39_caseless_green";
_glriflemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";
_glmag = "1Rnd_HE_Grenade_shell";
_glrifle_attach = ["acc_flashlight","optic_ACO_grn"];

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";
_glsmokepurple = "1Rnd_SmokePurple_Grenade_shell";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "UGL_FlareWhite_F";
_glflarered = "UGL_FlareRed_F";
_glflaregreen = "UGL_FlareGreen_F";
_glflareIR = "UGL_FlareCIR_F";

// Grenades
_grenade = "HandGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";
_smokegrenadeblue = "SmokeShellBlue";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "MediKit";

// Night Vision Goggles (NVGoggles)
_nvg = "NVGoggles_OPFOR";

// Chem Lights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemblue = "Chemlight_blue";

// Standard CSAT Camo backpacks
_bagsmall = "B_AssaultPack_dgtl";			// carries 120, weighs 20
_bagmedium = "B_TacticalPack_ocamo";				// carries 200, weighs 30
_baglarge =  "B_Carryall_ocamo"; 				// carries 320, weighs 40

// Urban Camo backpacks
// _bagsmall = "B_AssaultPack_mcamo";			// carries 120, weighs 20
// _bagmedium = "B_TacticalPack_mcamo";				// carries 200, weighs 30
// _baglarge =  "B_Carryall_oucamo"; 				// carries 320, weighs 40

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "LMG_Mk200_F";
_ARmag = "200Rnd_65x39_cased_Box";
_ARmag_tr = "200Rnd_65x39_cased_Box_Tracer";
_AR_attach = ["acc_flashlight","optic_ACO_grn"];

// Medium MG
_MMG = "LMG_Zafir_F";
_MMGmag = "150Rnd_762x51_Box";
_MMGmag_tr = "150Rnd_762x51_Box_Tracer";
_MMG_attach = ["acc_flashlight","optic_ACO_grn"];

// Rifleman AT
_RAT = "launch_RPG32_F";
_RATmag = "RPG32_F";
_RATmag2 = "RPG32_HE_F";

// Mortar
//_MTR = "B_Mk6Mortar_Wpn";
//_MTRmount = "B_Mk6Mortar_Support";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "SatchelCharge_Remote_Mag";
_DemoCharge = "DemoCharge_Remote_Mag";
_claymore = "ClaymoreDirectionalMine_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Base
// Standard CSAT Camo Clothing
_baseUniform = ["U_O_CombatUniform_ocamo"];
_baseHelmet = ["H_HelmetO_ocamo","H_HelmetLeaderO_ocamo","H_HelmetSpecO_blk","H_HelmetSpecO_ocamo"];

// Urban Camo Clothing
// _baseUniform = ["U_O_CombatUniform_oucamo"];
// _baseHelmet = ["H_HelmetO_oucamo","H_HelmetLeaderO_oucamo","H_HelmetSpecO_blk"];

// Standard CSAT Camo Vest
_mediumRig = ["V_TacVest_khk"]; 	// default for all infantry classes

// Urban Camo Vest
// _mediumRig = ["V_TacVest_blk"]; 	// default for all infantry classes

// Pilot
// _pilotUniform = ["U_O_PilotCoveralls"];
// _pilotHelmet = ["H_PilotHelmetHeli_O"];
// _pilotRig = ["V_HarnessO_brn"];

// Crewman
// _crewUniform = ["U_O_SpecopsUniform_ocamo"];
// _crewHelmet = ["H_HelmetCrew_O"];
// _crewRig = ["V_HarnessO_brn"];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init

// ====================================================================================

// HANDLE CLOTHES
// Handle clothes and helmets and such using the include file called next.

#include "f_assignGear_clothes.sqf";

// ====================================================================================

// PREPARE UNIT FOR GEAR ADDITION
// The following code removes all existing weapons and backpacks

removeBackpack _unit;
removeallweapons _unit;

// The following code removes any pre-added NVGs

if(_nvg in (assignedItems _unit)) then
{
_unit unassignItem _nvg;
_unit removeItem _nvg;
};

//_unit addItem _nvg;
//_unit assignItem _nvg;					// add universal NVG for this faction

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
//	case "co":
//	{
//		_unit addmagazines [_glriflemag,8];
//		_unit addmagazines [_glriflemag_tr,2];
//		_unit addmagazines [_glmag,3];
//		_unit addmagazines [_glsmokewhite,4];
//		_unit addWeapon _glrifle;					//_COrifle
//		_unit addmagazines [_pistolmag,2];
//		_unit addWeapon _pistol;
//		_unit addmagazines [_grenade,2];
//		_unit addmagazines [_mgrenade,1];
//		_unit addmagazines [_smokegrenade,5];
//		_unit addmagazines [_smokegrenadegreen,2];
//		_unit addWeapon "rangefinder";
//		_unit addItem "ItemGPS";
//		_unit assignItem "ItemGPS";
//		["g"] call _backpack;
//	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
//	case "dc":
//	{
//		_unit addmagazines [_glriflemag,8];
//		_unit addmagazines [_glriflemag_tr,2];
//		_unit addmagazines [_glmag,3];
//		_unit addmagazines [_glsmokewhite,4];
//		_unit addWeapon _glrifle;					//_DCrifle
//		_unit addmagazines [_pistolmag,2];
//		_unit addWeapon _pistol;
//		_unit addmagazines [_grenade,2];
//		_unit addmagazines [_mgrenade,1];
//		_unit addmagazines [_smokegrenade,5];
//		_unit addmagazines [_smokegrenadegreen,2];
//		_unit addWeapon "rangefinder";
//		_unit addItem "ItemGPS";
//		_unit assignItem "ItemGPS";
//		["g"] call _backpack;
//	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addmagazineGlobal _carbinemag_tr;
		_unit addWeapon _carbine;
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		
		_unit addItemToUniform "ItemRadio";
		
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_medkit, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 5];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 10];
		(unitBackpack _unit) additemCargoGlobal [_grenade, 2];
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		_unit addmagazineGlobal _glriflemag_tr;
		_unit addmagazineGlobal _glmag;
		_unit addWeapon _glrifle;
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		
		_unit addItemToUniform "ItemRadio";
		
		_unit addItemToVest _glriflemag_tr;
		_unit addItemToVest _glriflemag_tr;
		_unit addItemToVest _glriflemag_tr;
		_unit addItemToVest _glriflemag_tr;
		_unit addItemToVest _glriflemag_tr;
		_unit addItemToVest _glriflemag_tr;
		_unit addItemToVest _glriflemag_tr;
		_unit addItemToVest _glriflemag_tr;
		_unit addItemToVest _glriflemag_tr;
		_unit addItemToVest _glriflemag_tr;
		
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_firstaid, 2];
		(unitBackpack _unit) additemCargoGlobal [_glsmokewhite, 10];
		(unitBackpack _unit) additemCargoGlobal [_glsmokered, 4];
		(unitBackpack _unit) additemCargoGlobal [_glmag, 4];
		(unitBackpack _unit) additemCargoGlobal [_glriflemag_tr, 5];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadegreen, 4];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenadeblue, 2];
		(unitBackpack _unit) additemCargoGlobal [_grenade, 2];
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		_unit addmagazineGlobal _ARmag_tr;
		_unit addWeapon _AR;
		
		_unit addItemToUniform "ItemRadio";

		_unit addItemToVest _ARmag_tr;
		_unit addItemToVest _ARmag_tr;
		
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_firstaidkit, 2];
		(unitBackpack _unit) additemCargoGlobal [_ARmag_tr, 2];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_grenade, 2];
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		_unit addmagazineGlobal _carbinemag_tr;
		_unit addWeapon _rifle;
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		
		_unit addItemToUniform "ItemRadio";
		
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_firstaid, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 10];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_grenade, 2];
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		_unit addmagazineGlobal _carbinemag_tr;
		_unit addWeapon _carbine;
		
		_unit addItemToUniform "ItemRadio";
		
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_firstaid, 2];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 5];
		(unitBackpack _unit) additemCargoGlobal [_grenade, 2];
		(unitBackpack _unit) additemCargoGlobal [_RATmag, 1];
		
		_unit addWeapon _RAT;
	};

// LOADOUT: MEDIUM MG GUNNER
//	case "mmgg":
//	{
//		_unit addmagazines [_MMGmag,2];
//		_unit addmagazines [_MMGmag_tr,1];
//		_unit addmagazines [_smokegrenade,2];
//		_unit addWeapon _MMG;
//		_unit addmagazines [_pistolmag,4];
//		_unit addWeapon _pistol;
//		["mmg"] call _backpack;
//	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
//	case "mmgag":
//	{
//		_unit addmagazines [_riflemag,7];
//		_unit addmagazines [_riflemag_tr,2];
//		_unit addWeapon _rifle;
//		_unit addWeapon "Binocular";
//		_unit addmagazines [_grenade,2];
//		_unit addmagazines [_mgrenade,2];
//		_unit addmagazines [_smokegrenade,2];
//		["mmgag"] call _backpack;
//	};

// LOADOUT: MEDIUM AT GUNNER
//	case "matg":
//	{
//		["matg"] call _backpack;
//		_unit addmagazines [_carbinemag,7];
//		_unit addmagazines [_carbinemag_tr,2];
//		_unit addWeapon _carbine;
//		_unit addWeapon _MAT;
//		_unit addmagazines [_MATMag1,1];
//	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
//	case "matag":
//	{
//		_unit addmagazines [_carbinemag,7];
//		_unit addmagazines [_carbinemag_tr,2];
//		_unit addWeapon _rifle;
//		_unit addWeapon "Binocular";
//		_unit addmagazines [_smokegrenade,2];
//		_unit addmagazines [_riflemag,2];
//		_unit addmagazines [_grenade,1];
//		_unit addmagazines [_mgrenade,1];
//		_unit addmagazines [_smokegrenade,2];
//		["matag"] call _backpack;
//	};

// LOADOUT: MORTAR GUNNER
//	case "mtrg":
//	{
//		_unit addmagazines [_carbinemag,7];
//		_unit addmagazines [_carbinemag_tr,2];
//		_unit addWeapon _carbine;
//		_unit addmagazines [_smokegrenade,2];
//		_unit addBackpack _MTR;
//	};

// LOADOUT: MORTAR ASSISTANT GUNNER
//	case "mtrag":
//	{
//		_unit addmagazines [_carbinemag,7];
//		_unit addmagazines [_carbinemag_tr,2];
//		_unit addWeapon _carbine;
//		_unit addmagazines [_smokegrenade,2];
//		_unit addWeapon "Binocular";
//		_unit addBackpack _MTRmount;
//	};

// LOADOUT: VEHICLE CREW
//	case "c":
//	{
//		_unit addmagazines [_smgmag,5];
//		_unit addWeapon _smg;
//		_unit addmagazines [_smokegrenade,2];
//		_unit addItem "ItemGPS";
//		_unit assignItem "ItemGPS";
//	};


// LOADOUT: AIR VEHICLE PILOTS
//	case "p":
//	{
//		_unit addmagazines [_smgmag,5];
//		_unit addWeapon _smg;
//		_unit addmagazines [_smokegrenade,2];
//		_unit addItem "ItemGPS";
//		_unit assignItem "ItemGPS";
//	};

// LOADOUT: ENGINEER (DEMO)
//	case "eng":
//	{
//		_unit addmagazines [_carbinemag,7];
//		_unit addWeapon _carbine;
//		_unit addmagazines [_smokegrenade,2];
//		_unit addmagazines [_grenade,1];
//		_unit addmagazines [_mgrenade,1];
//		_unit addmagazines [_satchel,2];
//		_unit addItem "MineDetector";
//		["eng"] call _backpack;
//	};

// LOADOUT: ENGINEER (MINES)
//	case "engm":
//	{
//		_unit addmagazines [_carbinemag,7];
//		_unit addWeapon _carbine;
//		_unit addmagazines [_smokegrenade,2];
//		_unit addmagazines [_grenade,1];
//		_unit addmagazines [_mgrenade,1];
//		_unit addmagazines [_APmine2,2];
//		_unit addItem "MineDetector";
//		["engm"] call _backpack;
//	};

// LOADOUT: RIFLEMAN
	case "r":
	{
		_unit addmagazineGlobal _carbinemag_tr;
		_unit addWeapon _rifle;
		
		_unit addItemToUniform "ItemRadio";
		
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		_unit addItemToVest _carbinemag_tr;
		
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) additemCargoGlobal [_firstaid, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 5];
		(unitBackpack _unit) additemCargoGlobal [_smokegrenade, 7];
		(unitBackpack _unit) additemCargoGlobal [_grenade, 2];
	};

// LOADOUT: Carabinier
//	case "car":
//	{
//		_unit addmagazines [_carbinemag,7];
//		_unit addmagazines [_carbinemag_tr,2];
//		_unit addWeapon _carbine;
//		_unit addmagazines [_grenade,3];
//		_unit addmagazines [_mgrenade,3];
//		_unit addmagazines [_smokegrenade,3];
//		["car"] call _backpack;
//	};
	
// LOADOUT: Diver
//	case "div":
//	{
//		_unit addmagazines [_diverMag1,4];
//		_unit addmagazines [_diverMag2,3];
//		_unit addWeapon _diverWep;
//		_unit addmagazines [_grenade,3];
//		_unit addmagazines [_mgrenade,3];
//		_unit addmagazines [_smokegrenade,3];
//		["div"] call _backpack;
//	};
	
// LOADOUT: SUBMACHINEGUNNER
//	case "smg":
//	{
//		_unit addmagazines [_smgmag,7];
//		_unit addWeapon _smg;
//		_unit addmagazines [_grenade,3];
//		_unit addmagazines [_mgrenade,3];
//		_unit addmagazines [_smokegrenade,3];
//		["smg"] call _backpack;
//	};

// LOADOUT: GRENADIER
//	case "gren":
//	{
//		_unit addmagazines [_glriflemag,7];
//		_unit addmagazines [_glriflemag_tr,2];
//		_unit addWeapon _glrifle;
//		_unit addmagazines [_glmag,6];
//		_unit addmagazines [_glsmokewhite,2];
//		_unit addmagazines [_grenade,3];
//		_unit addmagazines [_mgrenade,3];
//		_unit addmagazines [_smokegrenade,2];
//		["g"] call _backpack;
//	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
//	case "v_car":
//	{
//		clearWeaponCargoGlobal _unit;
//		clearMagazineCargoGlobal _unit;
//		_unit addWeaponCargoGlobal [_carbine, 2];
//		_unit addMagazineCargoGlobal [_riflemag, 8];
//		_unit addMagazineCargoGlobal [_glriflemag, 8];
//		_unit addMagazineCargoGlobal [_carbinemag, 10];
//		_unit addMagazineCargoGlobal [_armag, 5];
//		_unit addMagazineCargoGlobal [_ratmag, 1];
//		_unit addMagazineCargoGlobal [_grenade, 4];
//		_unit addMagazineCargoGlobal [_smokegrenade, 4];
//		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
//		_unit addMagazineCargoGlobal [_glmag, 4];
//		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
//	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
//	case "v_tr":
//	{
//		clearWeaponCargoGlobal _unit;
//		clearMagazineCargoGlobal _unit;
//		_unit addWeaponCargoGlobal [_carbine, 10];
//		_unit addMagazineCargoGlobal [_riflemag, 40];
//		_unit addMagazineCargoGlobal [_glriflemag, 40];
//		_unit addMagazineCargoGlobal [_carbinemag, 40];
//		_unit addMagazineCargoGlobal [_armag, 22];
//		_unit addMagazineCargoGlobal [_ratmag, 6];
//		_unit addMagazineCargoGlobal [_grenade, 12];
//		_unit addmagazineCargoGlobal [_mgrenade,12];
//		_unit addMagazineCargoGlobal [_smokegrenade, 12];
//		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
//		_unit addMagazineCargoGlobal [_glmag, 12];
//		_unit addMagazineCargoGlobal [_glsmokewhite, 12];
//	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
//	case "v_ifv":
//	{
//		clearWeaponCargoGlobal _unit;
//		clearMagazineCargoGlobal _unit;
//		_unit addWeaponCargoGlobal [_carbine, 4];
//		_unit addMagazineCargoGlobal [_riflemag, 20];
//		_unit addMagazineCargoGlobal [_glriflemag, 20];
//		_unit addMagazineCargoGlobal [_carbinemag, 20];
//		_unit addMagazineCargoGlobal [_armag, 8];
//		_unit addMagazineCargoGlobal [_ratmag, 2];
//		_unit addMagazineCargoGlobal [_grenade, 8];
//		_unit addmagazineCargoGlobal [_mgrenade,8];
//		_unit addMagazineCargoGlobal [_smokegrenade, 8];
//		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
//		_unit addMagazineCargoGlobal [_glmag, 8];
//		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
//	};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
//		_unit addmagazines [_riflemag,7];
//		_unit addweapon _rifle;

//		_unit selectweapon primaryweapon _unit;

//		if (true) exitwith {player globalchat format ["DEBUG (f\common\folk_assignGear.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };

// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// Handle weapon attachments here.

#include "f_assignGear_attach.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;