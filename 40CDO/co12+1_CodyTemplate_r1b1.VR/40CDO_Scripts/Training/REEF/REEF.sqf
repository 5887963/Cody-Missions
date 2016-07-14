// PARAMS: 
//		INIT, START, ASSIGN
//		syntax: [PARAM, OBJ]


_param = _this select 0;
_obj = _this select 1;
_block1 = [b1_1, b1_2, b1_3];
_block2 = [b2_1, b2_2];
_block3 = [b3_1, b3_2, b3_3];
_blockCount = [_block1, _block2, _block3];
_targets = _block1 + _block2 + _block3;


// FUNCTIONS
CDO_fnc_REEF_init = {
	{_x animate["terc", 1];} forEach _targets;
};

CDO_fnc_REEF_start = {
	_bc = [];
	_bc = _this select 0;
	hint "prepping range";
	
	_random = selectRandom _bc;
	hint format ["Selected: %1", _random];
};


// INITIALISATION
if (_param == "INIT") then {
	[_targets] call CDO_fnc_REEF_init;
};

// ASSIGN HANDLER
if (_param == "ASSIGN") then {
	_obj = _this select 1;
	_obj addAction ["Initialise Range", {_this call CDO_fnc_REEF_start;}, [_blockCount], 1, false, true, "", "_this distance _target < 4"];
	_obj addAction ["Reset Targets", {_this call CDO_fnc_REEF_init;}, [_targets], 1, false, true, "", "_this distance _target < 4"];
};
