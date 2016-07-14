_callsign = _this select 0;
_unit = _this select 1;

_unit setVariable ["CDO_var_PlayerCallsign", _callsign, false];
_unit setGroupIdGlobal [_callsign];
