// ====================================================================================

// ACRE2: disables building occlusion

ACRE_TEST_OCCLUSION = false;
[0.2] call acre_api_fnc_setLossModelScale;

// ====================================================================================

// F3 - Disable Saving and Auto Saving
// DO NOT EDIT. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Disable_Saving_and_Auto_Saving

enableSaving [false, false];

// ====================================================================================

// F3 - Mute Orders and Reports
// DO NOT EDIT. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Mute_Orders_and_Reports

enableSentences true;

// ====================================================================================

// F3 - MapClick Teleport
// Enables teleportation on map, should only be used by MM's during editing but needs to be disabled before the mission is uploaded to the server. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=MapClick_Teleport

// f_var_mapClickTeleport_Uses = 0;					// How often the teleport action can be used. 0 = infinite usage.
// f_var_mapClickTeleport_TimeLimit = 0; 			// If higher than 0 the action will be removed after the given time.
// f_var_mapClickTeleport_GroupTeleport = false; 	// False: everyone can teleport. True: Only group leaders can teleport and will move their entire group.
// f_var_mapClickTeleport_Units = [];				// Restrict map click teleport to these units
// f_var_mapClickTeleport_Height = 0;				// If > 0 map click teleport will act as a HALO drop and automatically assign parachutes to units
// [] execVM "f\mapClickTeleport\f_mapClickTeleportAction.sqf";

// ====================================================================================

// F3 - Briefing
// Can be used instead of briefing modules in the editor. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Briefing_Template

f_script_briefing = [] execVM "briefing.sqf";

// ====================================================================================

// F3 - F3 Folk ARPS Group IDs
// DO NOT EDIT. Is vital for groups and active map markers. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=F3_Folk_ARPS_Group_IDs

f_script_setGroupIDs = [] execVM "f\setGroupID\f_setGroupIDs.sqf";

// ====================================================================================

// F3 - Buddy Team Colours
// DO NOT EDIT. Assigns combat buddy colours. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Buddy_Team_Colours

f_script_setTeamColours = [] execVM "f\setTeamColours\f_setTeamColours.sqf";

// ====================================================================================

// F3 - Fireteam Member Markers
// DO NOT EDIT. Adds map markers for each individual fire team member. Not used by the CNTO. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Fireteam_Member_Markers

// [] spawn f_fnc_SetLocalFTMemberMarkers;

// ====================================================================================

// F3 - F3 Folk ARPS Group Markers
// DO NOT EDIT. Assigns active map markers to each group. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=F3_Folk_ARPS_Group_Markers

//f_script_setGroupMarkers = [] execVM "f\groupMarkers\f_setLocalGroupMarkers.sqf";

// ====================================================================================

// F3 - F3 Common Local Variables
// WARNING: DO NOT DISABLE THIS COMPONENT

if(isServer) then {
	f_script_setLocalVars = [] execVM "f\common\f_setLocalVars.sqf";
};

// ====================================================================================

// F3 - Automatic Body Removal
// DO NOT EDIT. Cleans up dead bodies and blown up vehicles to reduce lag. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Automatic_Body_Removal

//f_var_removeBodyDelay = 180;
//f_var_removeBodyDistance = 300;
// f_var_doNotRemoveBodies = [];
//[] execVM "f\removeBody\f_addRemoveBodyEH.sqf";

// ====================================================================================

// F3 - Dynamic View Distance
// DO NOT EDIT. Auto-sets the view distance for certain players. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Dynamic_View_Distance

// f_var_viewDistance_default = 1250;
// f_var_viewDistance_tank = 2000;
// f_var_viewDistance_car = 2000;
// f_var_viewDistance_rotaryWing = 2500;
// f_var_viewDistance_fixedWing = 5000;
// f_var_viewDistance_crewOnly = true;
// [] execVM "f\dynamicViewDistance\f_setViewDistanceLoop.sqf";

// ====================================================================================

// F3 - Authorised Crew Check
// DO NOT EDIT. Limits the ability to use vehicles to certain characters only.  Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Authorised_Crew_Check

// VehicleName addEventhandler ["GetIn", {[_this,[UnitName1,UnitName2],false] call f_fnc_authorisedCrewCheck}];
// VehicleName addEventhandler ["GetIn", {[_this,["UnitClass1","UnitClass2"],false] call f_fnc_authorisedCrewCheck}];

// ====================================================================================

// F3 - Casualties Cap
// DO NOT EDIT. Makes missions fail after too many casualties.  Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Casualties_Cap

// [[GroupName or SIDE],100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";
// [[GroupName or SIDE],100,{code}] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// BLUFOR > NATO
// [BLUFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// OPFOR > CSAT
// [OPFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// INDEPENDENT > AAF
// [INDEPENDENT,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// ====================================================================================

// F3 - AI Skill Selector
// TEST RUN! DO NOT EDIT. Is vital to spawn Zeus units with proper AI skill. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=AI_Skill_Selector

// f_var_civAI = independent; 		// Optional: The civilian AI will use this side's settings
[] execVM "f\setAISKill\f_setAISkill.sqf";

// ====================================================================================

// F3 - Assign Gear AI
// DO NOT EDIT. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Assign_Gear_AI

// [] execVM "f\assignGear\f_assignGear_AI.sqf";

// ====================================================================================

// F3 - Name Tags
// DO NOT EDIT. Adds name tags. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Name_Tags

// [] execVM "f\nametag\f_nametags.sqf";

// ====================================================================================

// F3 - Group E&E Check
// DO NOT EDIT. A function specifically related to Escape and Evade missions. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Group_E%26E_Check

// [side,ObjectName or "MarkerName",100,1] execVM "f\EandEcheck\f_EandECheckLoop.sqf";
// [["Grp1","Grp2"],ObjectName or "MarkerName",100,1] execVM "f\EandEcheck\f_EandECheckLoop.sqf";

// ====================================================================================

// F3 - ORBAT Notes
// DO NOT EDIT. This component adds an Order of Battle list to the briefing. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=ORBAT_Notes

[] execVM "f\briefing\f_orbatNotes.sqf";

// ====================================================================================

// F3 - Loadout Notes
// DO NOT EDIT. This component generates a detailed list of the weapons, ammunition and items carried by the player at mission start. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Loadout_Notes

[] execVM "f\briefing\f_loadoutNotes.sqf";

// ====================================================================================

// F3 - Join Group Action
// DO NOT EDIT. Gives you an F3 option to join groups. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Join_Group_Action

// [false] execVM "f\groupJoin\f_groupJoinAction.sqf";

// ====================================================================================

// F3 - Mission Timer/Safe Start
// DO NOT EDIT. Enables the "save start" settings in the parameter section during the slot selection screen. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Safe_Start

[] execVM "f\safeStart\f_safeStart.sqf";

// ====================================================================================

// F3 - JIP setup
// DO NOT EDIT. This component handles the JIP scripts. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=F3_Folk_ARPS_JIP_Reinforcement_Options

f_var_JIP_FirstMenu = false;		// Do players connecting for the first time get the JIP menu? - This only works in missions with respawn.
f_var_JIP_RemoveCorpse = false;		// Remove the old corpse of respawning players?
f_var_JIP_GearMenu = false;			// Can JIP/respawned players select their own gear? False will use gear assigned by F3 Gear Component if possible

// ====================================================================================

// F3 - AI Unit Caching
// DO NOT EDIT. Sets the aggressiveness of the caching process. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=AI_Caching

// [30] spawn f_fnc_cInit;

// Note: Caching aggressiveness is set using the f_var_cachingAggressiveness variable; possible values:
// 1 - cache only non-leaders and non-drivers
// 2 - cache all non-moving units, always exclude vehicle drivers
// 3 - cache all units, incl. group leaders and vehicle drivers
// f_var_cachingAggressiveness = 2;

// ====================================================================================

// F3 - Radio Systems Support
// DO NOT EDIT. Activates ACRE2 compatibility in spectator mode. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Radio_Systems_Support

// [] execVM "f\radios\radio_init.sqf";

// ====================================================================================

// F3 - Medical Systems Support
// DO NOT EDIT. Activates medical system support and auto distribution. Wiki link: http://ferstaberinde.com/f3/en//index.php?title=Medical_Systems_Support

// SWS Config Settings
// How many extra FirstAidKits (FAKS) each player should receive when using the F3 Simple Wounding System:
// f_wound_extraFAK = 2;

// [] execVM "f\medical\medical_init.sqf";

// ====================================================================================

null = [] execVM "slingLoad.sqf";