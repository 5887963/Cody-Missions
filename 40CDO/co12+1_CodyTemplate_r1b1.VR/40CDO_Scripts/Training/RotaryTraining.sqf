call compile preprocessFile "40CDO_Scripts\_Common\40Cdo_Functions.sqf";

// INITIALISATION
[] spawn
{
    waitUntil { !isNull player };
    call CDO_fnc_initRotaryTraining;

    player addEventHandler ["Respawn", {call CDO_fnc_initRotaryTraining}];
};

CDO_fnc_initRotaryTraining = {
    if (alive player && player isKindOf "Man") then {
        player addAction ["<t color='#CC3300'>Show Instructor Options</t>", CDO_fnc_enableInstructor, [], 999, false, true, "", "call CDO_fnc_checkEnableInstructor"];
        player addAction ["<t color='#CC3300'>Hide Instructor Options</t>", CDO_fnc_disableInstructor, [], 999, false, true, "", "call CDO_fnc_checkDisableInstructor"];
        player addAction ["<t color='#33CCFF'>--> Repair Aircraft</t>", CDO_fnc_repairAircraft, [], 998, false, true, "", "call CDO_fnc_checkInstructorMode"];
        player addAction ["<t color='#FF9933'>--> Disable Main Rotor</t>", CDO_fnc_disableMainRotor, [], 997, false, true, "", "call CDO_fnc_checkInstructorMode"];
        player addAction ["<t color='#FF9933'>--> Disable Tail Rotor</t>", CDO_fnc_disableTailRotor, [], 996, false, true, "", "call CDO_fnc_checkInstructorMode"];
    };
};

CDO_fnc_enableInstructor = {
    player setVariable ["CDO_var_InstructorMode", true];
};

CDO_fnc_disableInstructor = {
    player setVariable ["CDO_var_InstructorMode", nil];
};

CDO_fnc_repairAircraft = {
    vehicle player setDamage 0;
};

CDO_fnc_disableMainRotor = {
    _pilot = driver (vehicle player);
    _veh = vehicle _pilot;
	
	[-2, {(_this select 0) setHitPointDamage ["HitHRotor", 1.0]}, [_veh]] call CBA_fnc_globalExecute;
};

CDO_fnc_disableTailRotor = {
    _pilot = driver (vehicle player);
    _veh = vehicle _pilot;
	
	[-2, {(_this select 0) setHitPointDamage ["HitVRotor", 1.0]}, [_veh]] call CBA_fnc_globalExecute;
};

CDO_fnc_checkEnableInstructor = {
    _return = false;

    if (vehicle player isKindOf "Helicopter") then {
        if (isNil {player getVariable "CDO_var_InstructorMode"}) then {
            if ([player] call CDO_fnc_isPilot) then {
                _return = true;
            };
        };
    };
    _return
};

CDO_fnc_checkDisableInstructor = {
    _return = false;

    if (vehicle player isKindOf "Helicopter") then {
        if (player getVariable "CDO_var_InstructorMode") then {
            if ([player] call CDO_fnc_isPilot) then {
                _return = true;
            };
        };
    };
    _return
};

CDO_fnc_checkInstructorMode = {
    _return = false;

    if (player getVariable "CDO_var_InstructorMode") then {
        if (vehicle player isKindOf "Helicopter") then {
            _return = true;
        } else {
             player setVariable ["CDO_var_InstructorMode", nil];
        };
    };
    _return
};
