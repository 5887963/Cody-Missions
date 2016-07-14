call compile preprocessFile "40CDO_Scripts\_Common\40Cdo_Functions.sqf";

_callsign = _this select 0;
_aircraft = _this select 1;

_aircraft setVariable ["CDO_var_VehicleCallsign", _callsign, false];

_aircraft addEventHandler ["GetIn", {call CDO_fnc_setAircraftCallsign}];
_aircraft addEventHandler ["GetOut", {call CDO_fnc_removeAircraftCallsign}];
player addEventHandler ["Respawn", {call CDO_fnc_respawnPlayer}];

CDO_fnc_setAircraftCallsign = {
    _veh = _this select 0;
    _unit = _this select 2;
    if ((_this select 1) == "driver") then {
        if ([_unit] call CDO_fnc_isPilot) then {
            if (_unit == player) then { // Ensures it isn't collectively selecting more than a single unit.
                _hintText = format ["New Callsign:\n%1", _veh getVariable "CDO_var_VehicleCallsign"];
                [_hintText] spawn BIS_fnc_infoText;
                _unit setGroupIdGlobal [_veh getVariable "CDO_var_VehicleCallsign"];
            };
        };
    };
};

CDO_fnc_removeAircraftCallsign = {
    _unit = (_this select 2);
    if ((_this select 1) == "driver") then {
        if ([_unit] call CDO_fnc_isPilot) then {
            if (_unit == player) then {
                _unit setGroupIdGlobal [_unit getVariable ["CDO_var_PlayerCallsign", "40ERR-REM"]];
            };
        };
    };
};

CDO_fnc_respawnPlayer = {
    _unit = _this select 0;
    if ([_unit] call CDO_fnc_isPilot) then {
        if (_unit == player) then {
            _unit setGroupIdGlobal [_unit getVariable ["CDO_var_PlayerCallsign", "40ERR-RSP"]];
        };
    };
};
