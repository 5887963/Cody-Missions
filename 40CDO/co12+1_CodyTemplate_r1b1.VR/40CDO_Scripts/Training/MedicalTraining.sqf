_obj = _this select 0;

// INITIALISATION
_obj addAction ["<t color='#FF5733'>Create Patient</t>", {_this call CDO_fnc_createPatient;}, [], 1, false, true, "", "_this distance _target < 2"];
_obj addAction ["<t color='#FF5733'>Delete Patient</t>", {_this call CDO_fnc_deletePatient;}, [], 1, false, true, "", "_this distance _target < 2"];

CDO_fnc_createPatient = {
	{if ((typeOf _x == "b_survivor_F") && (!isPlayer _x)) then {deleteVehicle _x}} forEach allUnits;
	_group1 = createGroup west;
	"b_survivor_F" createUnit [getMarkerPos "PatientSpawn", _group1, "pat=this; doStop pat1"];
	[pat, 'body', 0, objNull, selectRandom ['stab','bullet','falling'], 0, 0.70] call ace_medical_fnc_handleDamage_advanced;
	[pat, 'head', 0, objNull, selectRandom ['stab','bullet','falling'], 0, 0.60] call ace_medical_fnc_handleDamage_advanced;
	[pat, 'leg_l', 0, objNull, selectRandom ['stab','bullet','falling'], 0, 0.60] call ace_medical_fnc_handleDamage_advanced;
	[pat, 'body', 0, objNull, selectRandom ['stab','bullet','falling'], 0, 0.60] call ace_medical_fnc_handleDamage_advanced;
	[pat, 'leg_r', 0, objNull, selectRandom ['stab','bullet','falling'], 0, 0.60] call ace_medical_fnc_handleDamage_advanced;
	[pat, 'hand_r', 0, objNull, selectRandom ['stab','bullet','falling'], 0, 0.40] call ace_medical_fnc_handleDamage_advanced;
	[pat, 'hand_l', 0, objNull, selectRandom ['stab','bullet','falling'], 0, 0.40] call ace_medical_fnc_handleDamage_advanced;
	[pat] call ace_medical_fnc_handleDamage_advancedSetDamage;
};

CDO_fnc_deletePatient = {
	{if ((typeOf _x == "b_survivor_F") && (!isPlayer _x)) then {deleteVehicle _x}} forEach allUnits;
};
