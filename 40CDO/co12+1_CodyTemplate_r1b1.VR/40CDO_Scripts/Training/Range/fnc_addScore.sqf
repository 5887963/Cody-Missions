_target = _this select 0 select 0;
_shooter = _this select 0 select 1;
_allowScore = _this select 1;
_scoreLimit = _this select 2;

if (_allowScore) then {
	_targetString = format ["%1", _target];
	_isL1 = ["L1", _targetString, false] call BIS_fnc_inString;
	_isL2 = ["L2", _targetString, false] call BIS_fnc_inString;
	_isL3 = ["L3", _targetString, false] call BIS_fnc_inString;
	_isL4 = ["L4", _targetString, false] call BIS_fnc_inString;
	_isL5 = ["L5", _targetString, false] call BIS_fnc_inString;
	
	// Default variables to prevent errors.
	_scoreVar = 0;
	_shooterVar = "";
	_newScore = 0;
	_targetHitCount = _target getVariable ["CDO_var_RifleRange_HitCount", 0];
	
	// Check target hasn't already been shot maximum times.
	if (_targetHitCount < _scoreLimit) then {
		// What variables will be changed? Check what lane the target is in.
		if (_isL1) then {_scoreVar = "CDO_var_RifleRange_L1_Score"; _shooterVar = "CDO_var_RifleRange_L1_Shooter";};
		if (_isL2) then {_scoreVar = "CDO_var_RifleRange_L2_Score"; _shooterVar = "CDO_var_RifleRange_L2_Shooter";};
		if (_isL3) then {_scoreVar = "CDO_var_RifleRange_L3_Score"; _shooterVar = "CDO_var_RifleRange_L3_Shooter";};
		if (_isL4) then {_scoreVar = "CDO_var_RifleRange_L4_Score"; _shooterVar = "CDO_var_RifleRange_L4_Shooter";};
		if (_isL5) then {_scoreVar = "CDO_var_RifleRange_L5_Score"; _shooterVar = "CDO_var_RifleRange_L5_Shooter";};
		
		// Add 1 to the current score.
		_curScore = missionNamespace getVariable [_scoreVar, 0];
		_newScore = _curScore + 1;
		missionNamespace setVariable [_scoreVar, _newScore];
		
		// Add 1 to the targets hit count.
		_targetHitCount = _targetHitCount + 1;
		_target setVariable ["CDO_var_RifleRange_HitCount", _targetHitCount];
		
		// Update the range shooter.
		missionNamespace setVariable [_shooterVar, name _shooter];
		
		publicVariable format ["%1", _scoreVar];
		publicVariable format ["%1", _shooterVar];
		publicVariable "CDO_var_RifleRange_HitCount";
	};
};

/*
TODO:
- Remove access to actions while ACMT is in progress.
- All 10 rounds.
- Update ammo giving script.
*/