// 40 COMMANDO BACKEND FUNCTIONS - stores common functions.

CDO_fnc_isPilot = {
    _validClasses = ["UK3CB_BAF_HeliPilot_RAF", "UK3CB_BAF_HeliPilot_RN", "UK3CB_BAF_HeliCrew_MTP_RM", "B_Helipilot_F", "B_helicrew_F"]; // Update with class names that pilots use, else a new callsign won't be assigned.
    _unit = _this select 0;
    _return = false;

    if (typeOf _unit in _validClasses) then {
        _return = true;
    };
    _return;
};
