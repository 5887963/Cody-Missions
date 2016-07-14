// 40Cdo - SBS Kits
_box = _this select 0;
_distance = 4;

_box addAction ["[SBS] Woodland", "40CDO_Scripts\Loadouts\Kits_New\S_SBS_Woodland.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[SBS] Desert", "40CDO_Scripts\Loadouts\Kits_New\S_SBS_Desert.sqf", [], 1, false, true, "", "_this distance _target < 4"];
