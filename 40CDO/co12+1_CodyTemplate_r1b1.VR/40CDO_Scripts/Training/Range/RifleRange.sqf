/* RANGE PLANS:
- Can individually pop up or down targets on each range by sign.
- Range Instructor can pop up or down targets on all ranges by sign.
- Range Instructor can initiate ACMT stages on all ranges by sign.
- Range Instructor can raise red flag to show range is in use.
*/

_param = _this select 0;
_obj = _this select 1;

// Lane variables
_L1_Shooter = "blank";
_L2_Shooter = "blank";
_L3_Shooter = "blank";
_L4_Shooter = "blank";
_L5_Shooter = "blank";

// Row 1
_R1_L1_Targets = [L1_R1_T1, L1_R1_T2, L1_R1_T3];
_R1_L2_Targets = [L2_R1_T1, L2_R1_T2, L2_R1_T3];
_R1_L3_Targets = [L3_R1_T1, L3_R1_T2, L3_R1_T3];
_R1_L4_Targets = [L4_R1_T1, L4_R1_T2, L4_R1_T3];
_R1_L5_Targets = [L5_R1_T1, L5_R1_T2, L5_R1_T3];
_R1_Targets = _R1_L1_Targets + _R1_L2_Targets + _R1_L3_Targets + _R1_L4_Targets + _R1_L5_Targets;

// Row 2
_R2_L1_Targets = [L1_R2_T1, L1_R2_T2, L1_R2_T3];
_R2_L2_Targets = [L2_R2_T1, L2_R2_T2, L2_R2_T3];
_R2_L3_Targets = [L3_R2_T1, L3_R2_T2, L3_R2_T3];
_R2_L4_Targets = [L4_R2_T1, L4_R2_T2, L4_R2_T3];
_R2_L5_Targets = [L5_R2_T1, L5_R2_T2, L5_R2_T3];
_R2_Targets = _R2_L1_Targets + _R2_L2_Targets + _R2_L3_Targets + _R2_L4_Targets + _R2_L5_Targets;

// Row 3
_R3_L1_Targets = [L1_R3_T1, L1_R3_T2, L1_R3_T3];
_R3_L2_Targets = [L2_R3_T1, L2_R3_T2, L2_R3_T3];
_R3_L3_Targets = [L3_R3_T1, L3_R3_T2, L3_R3_T3];
_R3_L4_Targets = [L4_R3_T1, L4_R3_T2, L4_R3_T3];
_R3_L5_Targets = [L5_R3_T1, L5_R3_T2, L5_R3_T3];
_R3_Targets = _R3_L1_Targets + _R3_L2_Targets + _R3_L3_Targets + _R3_L4_Targets + _R3_L5_Targets;

// Row 4
_R4_L1_Targets = [L1_R4_T1, L1_R4_T2, L1_R4_T3];
_R4_L2_Targets = [L2_R4_T1, L2_R4_T2, L2_R4_T3];
_R4_L3_Targets = [L3_R4_T1, L3_R4_T2, L3_R4_T3];
_R4_L4_Targets = [L4_R4_T1, L4_R4_T2, L4_R4_T3];
_R4_L5_Targets = [L5_R4_T1, L5_R4_T2, L5_R4_T3];
_R4_Targets = _R4_L1_Targets + _R4_L2_Targets + _R4_L3_Targets + _R4_L4_Targets + _R4_L5_Targets;

// Row 5
_R5_L1_Targets = [L1_R5_T1, L1_R5_T2, L1_R5_T3];
_R5_L2_Targets = [L2_R5_T1, L2_R5_T2, L2_R5_T3];
_R5_L3_Targets = [L3_R5_T1, L3_R5_T2, L3_R5_T3];
_R5_L4_Targets = [L4_R5_T1, L4_R5_T2, L4_R5_T3];
_R5_L5_Targets = [L5_R5_T1, L5_R5_T2, L5_R5_T3];
_R5_Targets = _R5_L1_Targets + _R5_L2_Targets + _R5_L3_Targets + _R5_L4_Targets + _R5_L5_Targets;

// Cache targets
_allTargets = _R1_Targets + _R2_Targets + _R3_Targets + _R4_Targets + _R5_Targets;
_L1_Targets = _R1_L1_Targets + _R2_L1_Targets + _R3_L1_Targets + _R4_L1_Targets + _R5_L1_Targets;
_L2_Targets = _R1_L2_Targets + _R2_L2_Targets + _R3_L2_Targets + _R4_L2_Targets + _R5_L2_Targets;
_L3_Targets = _R1_L3_Targets + _R2_L3_Targets + _R3_L3_Targets + _R4_L3_Targets + _R5_L3_Targets;
_L4_Targets = _R1_L4_Targets + _R2_L4_Targets + _R3_L4_Targets + _R4_L4_Targets + _R5_L4_Targets;
_L5_Targets = _R1_L5_Targets + _R2_L5_Targets + _R3_L5_Targets + _R4_L5_Targets + _R5_L5_Targets;	


/** GENERIC RANGE FUCTIONS **/
// Resets the target(s) so that they are up.
CDO_fnc_RifleRange_resetUp = {
	_targets = _this select 0;
	if (typeName _targets == "ARRAY") then {
		{ _x animate ["terc", 0]; } forEach _targets;
	} else {
		_targets animate ["terc", 0];
	};
};
// Resets the target(s) so that they are up (for addActions).
CDO_fnc_RifleRange_resetUp_Action = {
	_targets = _this select 3 select 0;
	{ _x animate ["terc", 0]; } forEach _targets;
};
// Resets the target(s) so they are down. Also resets hit counter on target(s).
CDO_fnc_RifleRange_resetDown = {
	_targets = _this select 0;
	sleep 0.02; /* Small delay due to MP being a tit. */
	if (typeName _targets == "ARRAY") then {
		{
			_x animate ["terc", 1];
			_x setVariable ["CDO_var_RifleRange_HitCount", 0];
		} forEach _targets;
	} else {
		_targets animate ["terc", 1];
		_targets setVariable ["CDO_var_RifleRange_HitCount", 0];
	};
	publicVariable "CDO_var_RifleRange_HitCount";
};
// Resets the target(s) so they are down (for addActions).
CDO_fnc_RifleRange_resetDown_Action = {
	_targets = _this select 3 select 0;
	{ _x animate ["terc", 1]; } forEach _targets;
};
// Allows target(s) to repop after being shot.
CDO_fnc_RifleRange_allowRepop = {
	_targets = _this select 0;
	{
		_x removeAllMPEventHandlers "MPHit";
		_x addMPEventHandler ["MPHit", {[_this] execVM "40CDO_Scripts\Training\Range\fnc_allowPopup.sqf";}];
	} forEach _targets;
};
CDO_fnc_RifleRange_allowRepop_Action = {
	_targets = _this select 3 select 0;
	{
		_x removeAllMPEventHandlers "MPHit";
		_x addMPEventHandler ["MPHit", {[_this] execVM "40CDO_Scripts\Training\Range\fnc_allowPopup.sqf";}];
	} forEach _targets;
};
// Freeze target(s) up, even after being shot.
CDO_fnc_RifleRange_freezeRepop = {
	_targets = _this select 0;
	CDO_var_RifleRange_allowScore = _this select 1;
	CDO_var_RifleRange_scoreLimit = _this select 2;
	if (typeName _targets == "ARRAY") then {
		{
			_x removeAllMPEventHandlers "MPHit";
			_x addMPEventHandler ["MPHit", {[_this] execVM "40CDO_Scripts\Training\Range\fnc_freezePopup.sqf"; [_this, CDO_var_RifleRange_allowScore, CDO_var_RifleRange_scoreLimit] execVM "40CDO_Scripts\Training\Range\fnc_addScore.sqf";}];
		} forEach _targets;
	} else {
		_targets removeAllMPEventHandlers "MPHit";
		_targets addMPEventHandler ["MPHit", {[_this] execVM "40CDO_Scripts\Training\Range\fnc_freezePopup.sqf"; [_this, CDO_var_RifleRange_allowScore, CDO_var_RifleRange_scoreLimit] execVM "40CDO_Scripts\Training\Range\fnc_addScore.sqf";}];
	};
};
// Keep target(s) down after being shot.
CDO_fnc_RifleRange_denyRepop = {
	_targets = _this select 0;
	if (typeName _targets == "ARRAY") then {
		{
			_x removeAllMPEventHandlers "MPHit";
			_x addMPEventHandler ["MPHit", {_x animate ["terc", 1];}];
		} forEach _targets;
	} else {
		_targets removeAllMPEventHandlers "MPHit";
		_targets addMPEventHandler ["MPHit", {_targets animate ["terc", 1];}];
	};
};
CDO_fnc_RifleRange_denyRepop_Action = {
	_targets = _this select 3 select 0;
	if (typeName _targets == "ARRAY") then {
		{
			_x removeAllMPEventHandlers "MPHit";
			_x addMPEventHandler ["MPHit", {_x animate ["terc", 1];}];
		} forEach _targets;
	} else {
		_targets removeAllMPEventHandlers "MPHit";
		_targets addMPEventHandler ["MPHit", {_targets animate ["terc", 1];}];
	};
};
// Select a target from array and pop up.
CDO_fnc_RifleRange_popUpRandomTarget = {
	_targetList = _this select 0;
	_target = selectRandom _targetList;
	[_target] call CDO_fnc_RifleRange_resetUp;
	_target
};
// Called on mission start. All targets down, deny popup if hit. Set scores to default.
CDO_fnc_RifleRange_init = {
	[_this select 0] call CDO_fnc_RifleRange_resetDown;
	[RifleRange_ExampleTarget] call CDO_fnc_RifleRange_resetDown;
	[_this select 0] call CDO_fnc_RifleRange_denyRepop;
	call CDO_fnc_RifleRange_clearScores;
	[true] call CDO_fnc_RifleRange_setNotInUse;
};
// Reset the range scores and shooters.
CDO_fnc_RifleRange_displayScores = {
	_L1_Score	= missionNamespace getVariable "CDO_var_RifleRange_L1_Score";
	_L1_Shooter = missionNamespace getVariable "CDO_var_RifleRange_L1_Shooter";
	_L2_Score 	= missionNamespace getVariable "CDO_var_RifleRange_L2_Score";
	_L2_Shooter = missionNamespace getVariable "CDO_var_RifleRange_L2_Shooter";
	_L3_Score 	= missionNamespace getVariable "CDO_var_RifleRange_L3_Score";
	_L3_Shooter = missionNamespace getVariable "CDO_var_RifleRange_L3_Shooter";
	_L4_Score 	= missionNamespace getVariable "CDO_var_RifleRange_L4_Score";
	_L4_Shooter = missionNamespace getVariable "CDO_var_RifleRange_L4_Shooter";
	_L5_Score 	= missionNamespace getVariable "CDO_var_RifleRange_L5_Score";
	_L5_Shooter = missionNamespace getVariable "CDO_var_RifleRange_L5_Shooter";
	
	hint format ["L1: %1  -  Score: %2\nL2: %3  -  Score: %4\nL3: %5  -  Score: %6\nL4: %7  -  Score: %8\nL5: %9  -  Score: %10",
	_L1_Shooter, _L1_Score, _L2_Shooter, _L2_Score, _L3_Shooter, _L3_Score, _L4_Shooter, _L4_Score, _L5_Shooter, _L5_Score]; // L1: Lt. S. Gray  -  Score: 3
};
// Reset the range scores and shooters.
CDO_fnc_RifleRange_clearScores = {
	missionNamespace setVariable ["CDO_var_RifleRange_L1_Score", 0];
	missionNamespace setVariable ["CDO_var_RifleRange_L2_Score", 0];
	missionNamespace setVariable ["CDO_var_RifleRange_L3_Score", 0];
	missionNamespace setVariable ["CDO_var_RifleRange_L4_Score", 0];
	missionNamespace setVariable ["CDO_var_RifleRange_L5_Score", 0];
	missionNamespace setVariable ["CDO_var_RifleRange_L1_Shooter", "No-one"];
	missionNamespace setVariable ["CDO_var_RifleRange_L2_Shooter", "No-one"];
	missionNamespace setVariable ["CDO_var_RifleRange_L3_Shooter", "No-one"];
	missionNamespace setVariable ["CDO_var_RifleRange_L4_Shooter", "No-one"];
	missionNamespace setVariable ["CDO_var_RifleRange_L5_Shooter", "No-one"];
	
	publicVariable "CDO_var_RifleRange_L1_Score";
	publicVariable "CDO_var_RifleRange_L2_Score";
	publicVariable "CDO_var_RifleRange_L3_Score";
	publicVariable "CDO_var_RifleRange_L4_Score";
	publicVariable "CDO_var_RifleRange_L5_Score";
	publicVariable "CDO_var_RifleRange_L1_Shooter";
	publicVariable "CDO_var_RifleRange_L2_Shooter";
	publicVariable "CDO_var_RifleRange_L3_Shooter";
	publicVariable "CDO_var_RifleRange_L4_Shooter";
	publicVariable "CDO_var_RifleRange_L5_Shooter";
};
// Sets whether the range is not in use (boolean). If true, options will appear on ranges.
CDO_fnc_RifleRange_setNotInUse = {
	_bool = _this select 0;
	missionNamespace setVariable ["CDO_var_RifleRange_isNotInUse", _bool];
	publicVariable "CDO_var_RifleRange_isNotInUse";
};
// Checks to see if the range is not in use (return boolean).
CDO_fnc_RifleRange_getNotInUse = {
	_bool = missionNamespace getVariable ["CDO_var_RifleRange_isNotInUse", true];
	_bool
};


/** Annual Combat Marksmanship Test - Rounds **/
// Round 1: 100m, 5 Rnds, Rapid, Standing
CDO_fnc_RifleRange_startExample_Rapid = {
	_target = _this select 3 select 0;
	[_target] call CDO_fnc_RifleRange_resetDown;
	
	sleep random 10;
	[_target] call CDO_fnc_RifleRange_resetUp;
	[_target, false] call CDO_fnc_RifleRange_freezeRepop;
	sleep 10;
	
	[_target] call CDO_fnc_RifleRange_denyRepop;
	[_target] call CDO_fnc_RifleRange_resetDown;
};
CDO_fnc_RifleRange_startExample_Snap = {
	_target = _this select 3 select 0;
	[_target] call CDO_fnc_RifleRange_resetDown;
	
	sleep random 10;
	[_target] call CDO_fnc_RifleRange_resetUp;
	[_target, false] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_target] call CDO_fnc_RifleRange_denyRepop;
	[_target] call CDO_fnc_RifleRange_resetDown;
};
// ACMT Round 1
CDO_fnc_RifleRange_startRound_1 = {
	hint "Round 1 starting.";
	// Reset all targets down.
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	_allTargets = _this select 3 select 0;
	
	// Set the range to being in use, removing action options from lanes.
	[false] call CDO_fnc_RifleRange_setNotInUse;
	
	// Get targets required for this stage.
	_R1_L1_Targets = _this select 3 select 1;
	_R1_L2_Targets = _this select 3 select 2;
	_R1_L3_Targets = _this select 3 select 3;
	_R1_L4_Targets = _this select 3 select 4;
	_R1_L5_Targets = _this select 3 select 5;
	
	// Random time before target pops up.
	sleep random 10;
	
	// Target 1: Pop up random target on each lane and freeze it up.
	_L1 = [_R1_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R1_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R1_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R1_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R1_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 5] call CDO_fnc_RifleRange_freezeRepop;
	
	// Allow 10 seconds for targets to be hit.
	sleep 10;
	
	// Target 1: Prevent repopping, pop down.
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	
	// Set the range to not being in use, adding action options back to lanes.
	[true] call CDO_fnc_RifleRange_setNotInUse;
	hint "Round 1 complete.";
};
// ACMT Round 2
CDO_fnc_RifleRange_startRound_2 = {
	hint "Round 2 starting.";
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[false] call CDO_fnc_RifleRange_setNotInUse;
	_allTargets = _this select 3 select 0;
	
	_R2_L1_Targets = _this select 3 select 1;
	_R2_L2_Targets = _this select 3 select 2;
	_R2_L3_Targets = _this select 3 select 3;
	_R2_L4_Targets = _this select 3 select 4;
	_R2_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R2_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R2_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R2_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R2_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R2_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 5] call CDO_fnc_RifleRange_freezeRepop;
	sleep 10;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[true] call CDO_fnc_RifleRange_setNotInUse;
	hint "Round 2 complete.";
};
// ACMT Round 3
CDO_fnc_RifleRange_startRound_3 = {
	hint "Round 3 starting.";
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[false] call CDO_fnc_RifleRange_setNotInUse;
	_allTargets = _this select 3 select 0;
	
	// Target 1
	_R2_L1_Targets = _this select 3 select 1;
	_R2_L2_Targets = _this select 3 select 2;
	_R2_L3_Targets = _this select 3 select 3;
	_R2_L4_Targets = _this select 3 select 4;
	_R2_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R2_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R2_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R2_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R2_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R2_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 2
	_R2_L1_Targets = _this select 3 select 1;
	_R2_L2_Targets = _this select 3 select 2;
	_R2_L3_Targets = _this select 3 select 3;
	_R2_L4_Targets = _this select 3 select 4;
	_R2_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R2_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R2_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R2_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R2_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R2_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 3
	_R2_L1_Targets = _this select 3 select 1;
	_R2_L2_Targets = _this select 3 select 2;
	_R2_L3_Targets = _this select 3 select 3;
	_R2_L4_Targets = _this select 3 select 4;
	_R2_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R2_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R2_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R2_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R2_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R2_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 4
	_R2_L1_Targets = _this select 3 select 1;
	_R2_L2_Targets = _this select 3 select 2;
	_R2_L3_Targets = _this select 3 select 3;
	_R2_L4_Targets = _this select 3 select 4;
	_R2_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R2_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R2_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R2_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R2_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R2_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 5
	_R2_L1_Targets = _this select 3 select 1;
	_R2_L2_Targets = _this select 3 select 2;
	_R2_L3_Targets = _this select 3 select 3;
	_R2_L4_Targets = _this select 3 select 4;
	_R2_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R2_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R2_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R2_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R2_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R2_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[true] call CDO_fnc_RifleRange_setNotInUse;
	hint "Round 3 complete.";
};
// ACMT Round 4
CDO_fnc_RifleRange_startRound_4 = {
	hint "Round 4 starting.";
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[false] call CDO_fnc_RifleRange_setNotInUse;
	_allTargets = _this select 3 select 0;
	
	// Target 1
	_R2_L1_Targets = _this select 3 select 1;
	_R2_L2_Targets = _this select 3 select 2;
	_R2_L3_Targets = _this select 3 select 3;
	_R2_L4_Targets = _this select 3 select 4;
	_R2_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R2_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R2_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R2_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R2_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R2_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 2
	_R2_L1_Targets = _this select 3 select 1;
	_R2_L2_Targets = _this select 3 select 2;
	_R2_L3_Targets = _this select 3 select 3;
	_R2_L4_Targets = _this select 3 select 4;
	_R2_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R2_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R2_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R2_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R2_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R2_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 3
	_R2_L1_Targets = _this select 3 select 1;
	_R2_L2_Targets = _this select 3 select 2;
	_R2_L3_Targets = _this select 3 select 3;
	_R2_L4_Targets = _this select 3 select 4;
	_R2_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R2_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R2_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R2_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R2_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R2_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 4
	_R2_L1_Targets = _this select 3 select 1;
	_R2_L2_Targets = _this select 3 select 2;
	_R2_L3_Targets = _this select 3 select 3;
	_R2_L4_Targets = _this select 3 select 4;
	_R2_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R2_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R2_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R2_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R2_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R2_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 5
	_R2_L1_Targets = _this select 3 select 1;
	_R2_L2_Targets = _this select 3 select 2;
	_R2_L3_Targets = _this select 3 select 3;
	_R2_L4_Targets = _this select 3 select 4;
	_R2_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R2_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R2_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R2_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R2_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R2_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 5 (Rapid)
	_R2_L1_Targets = _this select 3 select 1;
	_R2_L2_Targets = _this select 3 select 2;
	_R2_L3_Targets = _this select 3 select 3;
	_R2_L4_Targets = _this select 3 select 4;
	_R2_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R2_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R2_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R2_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R2_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R2_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 5] call CDO_fnc_RifleRange_freezeRepop;
	sleep 10;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[true] call CDO_fnc_RifleRange_setNotInUse;
	hint "Round 4 complete.";
};
// ACMT Round 5
CDO_fnc_RifleRange_startRound_5 = {
	hint "Round 5 starting.";
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[false] call CDO_fnc_RifleRange_setNotInUse;
	_allTargets = _this select 3 select 0;
	
	_R3_L1_Targets = _this select 3 select 1;
	_R3_L2_Targets = _this select 3 select 2;
	_R3_L3_Targets = _this select 3 select 3;
	_R3_L4_Targets = _this select 3 select 4;
	_R3_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R3_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R3_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R3_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R3_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R3_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 5] call CDO_fnc_RifleRange_freezeRepop;
	sleep 10;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[true] call CDO_fnc_RifleRange_setNotInUse;
	hint "Round 5 complete.";
};
// ACMT Round 6
CDO_fnc_RifleRange_startRound_6 = {
	hint "Round 6 starting.";
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[false] call CDO_fnc_RifleRange_setNotInUse;
	_allTargets = _this select 3 select 0;
	
	// Target 1
	_R3_L1_Targets = _this select 3 select 1;
	_R3_L2_Targets = _this select 3 select 2;
	_R3_L3_Targets = _this select 3 select 3;
	_R3_L4_Targets = _this select 3 select 4;
	_R3_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R3_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R3_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R3_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R3_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R3_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 2
	_R3_L1_Targets = _this select 3 select 1;
	_R3_L2_Targets = _this select 3 select 2;
	_R3_L3_Targets = _this select 3 select 3;
	_R3_L4_Targets = _this select 3 select 4;
	_R3_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R3_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R3_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R3_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R3_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R3_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 3
	_R3_L1_Targets = _this select 3 select 1;
	_R3_L2_Targets = _this select 3 select 2;
	_R3_L3_Targets = _this select 3 select 3;
	_R3_L4_Targets = _this select 3 select 4;
	_R3_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R3_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R3_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R3_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R3_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R3_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 4
	_R3_L1_Targets = _this select 3 select 1;
	_R3_L2_Targets = _this select 3 select 2;
	_R3_L3_Targets = _this select 3 select 3;
	_R3_L4_Targets = _this select 3 select 4;
	_R3_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R3_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R3_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R3_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R3_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R3_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 5
	_R3_L1_Targets = _this select 3 select 1;
	_R3_L2_Targets = _this select 3 select 2;
	_R3_L3_Targets = _this select 3 select 3;
	_R3_L4_Targets = _this select 3 select 4;
	_R3_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R3_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R3_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R3_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R3_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R3_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[true] call CDO_fnc_RifleRange_setNotInUse;
	hint "Round 6 complete.";
};
// ACMT Round 7
CDO_fnc_RifleRange_startRound_7 = {
	hint "Round 7 starting.";
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[false] call CDO_fnc_RifleRange_setNotInUse;
	_allTargets = _this select 3 select 0;
	
	// Target 1
	_R3_L1_Targets = _this select 3 select 1;
	_R3_L2_Targets = _this select 3 select 2;
	_R3_L3_Targets = _this select 3 select 3;
	_R3_L4_Targets = _this select 3 select 4;
	_R3_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R3_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R3_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R3_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R3_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R3_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 2
	_R3_L1_Targets = _this select 3 select 1;
	_R3_L2_Targets = _this select 3 select 2;
	_R3_L3_Targets = _this select 3 select 3;
	_R3_L4_Targets = _this select 3 select 4;
	_R3_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R3_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R3_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R3_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R3_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R3_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 3
	_R3_L1_Targets = _this select 3 select 1;
	_R3_L2_Targets = _this select 3 select 2;
	_R3_L3_Targets = _this select 3 select 3;
	_R3_L4_Targets = _this select 3 select 4;
	_R3_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R3_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R3_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R3_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R3_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R3_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 4
	_R3_L1_Targets = _this select 3 select 1;
	_R3_L2_Targets = _this select 3 select 2;
	_R3_L3_Targets = _this select 3 select 3;
	_R3_L4_Targets = _this select 3 select 4;
	_R3_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R3_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R3_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R3_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R3_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R3_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 5
	_R3_L1_Targets = _this select 3 select 1;
	_R3_L2_Targets = _this select 3 select 2;
	_R3_L3_Targets = _this select 3 select 3;
	_R3_L4_Targets = _this select 3 select 4;
	_R3_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R3_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R3_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R3_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R3_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R3_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[true] call CDO_fnc_RifleRange_setNotInUse;
	hint "Round 7 complete.";
};
// ACMT Round 8
CDO_fnc_RifleRange_startRound_8 = {
	hint "Round 8 starting.";
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[false] call CDO_fnc_RifleRange_setNotInUse;
	_allTargets = _this select 3 select 0;
	
	// Target 1
	_R4_L1_Targets = _this select 3 select 1;
	_R4_L2_Targets = _this select 3 select 2;
	_R4_L3_Targets = _this select 3 select 3;
	_R4_L4_Targets = _this select 3 select 4;
	_R4_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R4_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R4_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R4_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R4_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R4_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 2
	_R4_L1_Targets = _this select 3 select 1;
	_R4_L2_Targets = _this select 3 select 2;
	_R4_L3_Targets = _this select 3 select 3;
	_R4_L4_Targets = _this select 3 select 4;
	_R4_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R4_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R4_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R4_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R4_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R4_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 3
	_R4_L1_Targets = _this select 3 select 1;
	_R4_L2_Targets = _this select 3 select 2;
	_R4_L3_Targets = _this select 3 select 3;
	_R4_L4_Targets = _this select 3 select 4;
	_R4_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R4_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R4_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R4_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R4_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R4_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 4
	_R4_L1_Targets = _this select 3 select 1;
	_R4_L2_Targets = _this select 3 select 2;
	_R4_L3_Targets = _this select 3 select 3;
	_R4_L4_Targets = _this select 3 select 4;
	_R4_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R4_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R4_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R4_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R4_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R4_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 5
	_R4_L1_Targets = _this select 3 select 1;
	_R4_L2_Targets = _this select 3 select 2;
	_R4_L3_Targets = _this select 3 select 3;
	_R4_L4_Targets = _this select 3 select 4;
	_R4_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R4_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R4_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R4_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R4_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R4_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[true] call CDO_fnc_RifleRange_setNotInUse;
	hint "Round 8 complete.";
};
// ACMT Round 8
CDO_fnc_RifleRange_startRound_9 = {
	hint "Round 9 starting.";
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[false] call CDO_fnc_RifleRange_setNotInUse;
	_allTargets = _this select 3 select 0;
	
	// Target 1
	_R4_L1_Targets = _this select 3 select 1;
	_R4_L2_Targets = _this select 3 select 2;
	_R4_L3_Targets = _this select 3 select 3;
	_R4_L4_Targets = _this select 3 select 4;
	_R4_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R4_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R4_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R4_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R4_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R4_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 5] call CDO_fnc_RifleRange_freezeRepop;
	sleep 10;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 2
	_R4_L1_Targets = _this select 3 select 1;
	_R4_L2_Targets = _this select 3 select 2;
	_R4_L3_Targets = _this select 3 select 3;
	_R4_L4_Targets = _this select 3 select 4;
	_R4_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R4_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R4_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R4_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R4_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R4_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 3
	_R4_L1_Targets = _this select 3 select 1;
	_R4_L2_Targets = _this select 3 select 2;
	_R4_L3_Targets = _this select 3 select 3;
	_R4_L4_Targets = _this select 3 select 4;
	_R4_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R4_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R4_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R4_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R4_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R4_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 4
	_R4_L1_Targets = _this select 3 select 1;
	_R4_L2_Targets = _this select 3 select 2;
	_R4_L3_Targets = _this select 3 select 3;
	_R4_L4_Targets = _this select 3 select 4;
	_R4_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R4_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R4_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R4_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R4_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R4_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 5
	_R4_L1_Targets = _this select 3 select 1;
	_R4_L2_Targets = _this select 3 select 2;
	_R4_L3_Targets = _this select 3 select 3;
	_R4_L4_Targets = _this select 3 select 4;
	_R4_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R4_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R4_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R4_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R4_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R4_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2; 		
	
	// Target 6
	_R4_L1_Targets = _this select 3 select 1;
	_R4_L2_Targets = _this select 3 select 2;
	_R4_L3_Targets = _this select 3 select 3;
	_R4_L4_Targets = _this select 3 select 4;
	_R4_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R4_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R4_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R4_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R4_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R4_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[true] call CDO_fnc_RifleRange_setNotInUse;
	hint "Round 9 complete.";
};
// ACMT Round 10
CDO_fnc_RifleRange_startRound_10 = {
	hint "Round 10 starting.";
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[_this select 3 select 0] call CDO_fnc_RifleRange_resetDown;
	[false] call CDO_fnc_RifleRange_setNotInUse;
	_allTargets = _this select 3 select 0;
	
	// Target 1
	_R5_L1_Targets = _this select 3 select 1;
	_R5_L2_Targets = _this select 3 select 2;
	_R5_L3_Targets = _this select 3 select 3;
	_R5_L4_Targets = _this select 3 select 4;
	_R5_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R5_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R5_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R5_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R5_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R5_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 2
	_R5_L1_Targets = _this select 3 select 1;
	_R5_L2_Targets = _this select 3 select 2;
	_R5_L3_Targets = _this select 3 select 3;
	_R5_L4_Targets = _this select 3 select 4;
	_R5_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R5_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R5_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R5_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R5_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R5_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 3
	_R5_L1_Targets = _this select 3 select 1;
	_R5_L2_Targets = _this select 3 select 2;
	_R5_L3_Targets = _this select 3 select 3;
	_R5_L4_Targets = _this select 3 select 4;
	_R5_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R5_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R5_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R5_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R5_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R5_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 4
	_R5_L1_Targets = _this select 3 select 1;
	_R5_L2_Targets = _this select 3 select 2;
	_R5_L3_Targets = _this select 3 select 3;
	_R5_L4_Targets = _this select 3 select 4;
	_R5_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R5_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R5_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R5_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R5_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R5_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 5
	_R5_L1_Targets = _this select 3 select 1;
	_R5_L2_Targets = _this select 3 select 2;
	_R5_L3_Targets = _this select 3 select 3;
	_R5_L4_Targets = _this select 3 select 4;
	_R5_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R5_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R5_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R5_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R5_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R5_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 6
	_R5_L1_Targets = _this select 3 select 1;
	_R5_L2_Targets = _this select 3 select 2;
	_R5_L3_Targets = _this select 3 select 3;
	_R5_L4_Targets = _this select 3 select 4;
	_R5_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R5_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R5_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R5_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R5_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R5_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 7
	_R5_L1_Targets = _this select 3 select 1;
	_R5_L2_Targets = _this select 3 select 2;
	_R5_L3_Targets = _this select 3 select 3;
	_R5_L4_Targets = _this select 3 select 4;
	_R5_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R5_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R5_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R5_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R5_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R5_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 8
	_R5_L1_Targets = _this select 3 select 1;
	_R5_L2_Targets = _this select 3 select 2;
	_R5_L3_Targets = _this select 3 select 3;
	_R5_L4_Targets = _this select 3 select 4;
	_R5_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R5_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R5_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R5_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R5_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R5_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	sleep 2;
	
	// Target 9
	_R5_L1_Targets = _this select 3 select 1;
	_R5_L2_Targets = _this select 3 select 2;
	_R5_L3_Targets = _this select 3 select 3;
	_R5_L4_Targets = _this select 3 select 4;
	_R5_L5_Targets = _this select 3 select 5;
	sleep random 10;
	
	_L1 = [_R5_L1_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L2 = [_R5_L2_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L3 = [_R5_L3_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L4 = [_R5_L4_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_L5 = [_R5_L5_Targets] call CDO_fnc_RifleRange_popUpRandomTarget;
	_targets = [_L1, _L2, _L3, _L4, _L5];
	
	[_targets, true, 1] call CDO_fnc_RifleRange_freezeRepop;
	sleep 3;
	
	[_allTargets] call CDO_fnc_RifleRange_denyRepop;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[_allTargets] call CDO_fnc_RifleRange_resetDown;
	[true] call CDO_fnc_RifleRange_setNotInUse;
	hint "Round 10 complete.";
};




/** INITIALISATION **/
// Setup the range to default standard.
if (_param == "INIT") then {
	[_allTargets] call CDO_fnc_RifleRange_init;
};
// Setup Instructors actions.
if (_param == "ASSIGN_INSTRUCTOR") then {
	_obj addAction ["Pop Up All Targets", {_this call CDO_fnc_RifleRange_allowRepop_Action; _this call CDO_fnc_RifleRange_resetUp_Action;}, [_allTargets], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Pop Down All Targets", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_resetDown_Action;}, [_allTargets], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Display Scores", {_this call CDO_fnc_RifleRange_displayScores;}, [], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Start Round 1", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_startRound_1;}, [_allTargets, _R1_L1_Targets, _R1_L2_Targets, _R1_L3_Targets, _R1_L4_Targets, _R1_L5_Targets], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Start Round 2", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_startRound_2;}, [_allTargets, _R2_L1_Targets, _R2_L2_Targets, _R2_L3_Targets, _R2_L4_Targets, _R2_L5_Targets], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Start Round 3", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_startRound_3;}, [_allTargets, _R2_L1_Targets, _R2_L2_Targets, _R2_L3_Targets, _R2_L4_Targets, _R2_L5_Targets], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Start Round 4", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_startRound_4;}, [_allTargets, _R2_L1_Targets, _R2_L2_Targets, _R2_L3_Targets, _R2_L4_Targets, _R2_L5_Targets], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Start Round 5", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_startRound_5;}, [_allTargets, _R3_L1_Targets, _R3_L2_Targets, _R3_L3_Targets, _R3_L4_Targets, _R3_L5_Targets], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Start Round 6", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_startRound_6;}, [_allTargets, _R3_L1_Targets, _R3_L2_Targets, _R3_L3_Targets, _R3_L4_Targets, _R3_L5_Targets], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Start Round 7", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_startRound_7;}, [_allTargets, _R3_L1_Targets, _R3_L2_Targets, _R3_L3_Targets, _R3_L4_Targets, _R3_L5_Targets], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Start Round 8", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_startRound_8;}, [_allTargets, _R4_L1_Targets, _R4_L2_Targets, _R4_L3_Targets, _R4_L4_Targets, _R4_L5_Targets], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Start Round 9", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_startRound_9;}, [_allTargets, _R4_L1_Targets, _R4_L2_Targets, _R4_L3_Targets, _R4_L4_Targets, _R4_L5_Targets], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Start Round 10", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_startRound_10;}, [_allTargets, _R5_L1_Targets, _R5_L2_Targets, _R5_L3_Targets, _R5_L4_Targets, _R5_L5_Targets], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Clear Scores", {_this call CDO_fnc_RifleRange_clearScores;}, [], 1, false, true, "", "_this distance _target < 4"];
};
// Setup Example Target actions.
if (_param == "ASSIGN_EXAMPLE") then {
	_obj addAction ["Rapid Example", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_startExample_Rapid;}, [RifleRange_ExampleTarget], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Snap Example", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_startExample_Snap;}, [RifleRange_ExampleTarget], 1, false, true, "", "_this distance _target < 4"];
};
// Setup Lane 1 actions.
if (_param == "ASSIGN_L1") then {
	_obj addAction ["Pop Up Lane Targets", {_this call CDO_fnc_RifleRange_allowRepop_Action; _this call CDO_fnc_RifleRange_resetUp_Action;}, [_L1_Targets], 1, false, true, "", "((_this distance _target < 4) && (call CDO_fnc_RifleRange_getNotInUse))"];
	_obj addAction ["Pop Down Lane Targets", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_resetDown_Action;}, [_L1_Targets], 1, false, true, "", "((_this distance _target < 4) && (call CDO_fnc_RifleRange_getNotInUse))"];
};
// Setup Lane 1 actions.
if (_param == "ASSIGN_L2") then {
	_obj addAction ["Pop Up Lane Targets", {_this call CDO_fnc_RifleRange_allowRepop_Action; _this call CDO_fnc_RifleRange_resetUp_Action;}, [_L2_Targets], 1, false, true, "", "((_this distance _target < 4) && (call CDO_fnc_RifleRange_getNotInUse))"];
	_obj addAction ["Pop Down Lane Targets", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_resetDown_Action;}, [_L2_Targets], 1, false, true, "", "((_this distance _target < 4) && (call CDO_fnc_RifleRange_getNotInUse))"];
};
// Setup Lane 1 actions.
if (_param == "ASSIGN_L3") then {
	_obj addAction ["Pop Up Lane Targets", {_this call CDO_fnc_RifleRange_allowRepop_Action; _this call CDO_fnc_RifleRange_resetUp_Action;}, [_L3_Targets], 1, false, true, "", "((_this distance _target < 4) && (call CDO_fnc_RifleRange_getNotInUse))"];
	_obj addAction ["Pop Down Lane Targets", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_resetDown_Action;}, [_L3_Targets], 1, false, true, "", "((_this distance _target < 4) && (call CDO_fnc_RifleRange_getNotInUse))"];
};
// Setup Lane 1 actions.
if (_param == "ASSIGN_L4") then {
	_obj addAction ["Pop Up Lane Targets", {_this call CDO_fnc_RifleRange_allowRepop_Action; _this call CDO_fnc_RifleRange_resetUp_Action;}, [_L4_Targets], 1, false, true, "", "((_this distance _target < 4) && (call CDO_fnc_RifleRange_getNotInUse))"];
	_obj addAction ["Pop Down Lane Targets", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_resetDown_Action;}, [_L4_Targets], 1, false, true, "", "((_this distance _target < 4) && (call CDO_fnc_RifleRange_getNotInUse))"];
};
// Setup Lane 1 actions.
if (_param == "ASSIGN_L5") then {
	_obj addAction ["Pop Up Lane Targets", {_this call CDO_fnc_RifleRange_allowRepop_Action; _this call CDO_fnc_RifleRange_resetUp_Action;}, [_L5_Targets], 1, false, true, "", "((_this distance _target < 4) && (call CDO_fnc_RifleRange_getNotInUse))"];
	_obj addAction ["Pop Down Lane Targets", {_this call CDO_fnc_RifleRange_denyRepop_Action; _this call CDO_fnc_RifleRange_resetDown_Action;}, [_L5_Targets], 1, false, true, "", "((_this distance _target < 4) && (call CDO_fnc_RifleRange_getNotInUse))"];
};