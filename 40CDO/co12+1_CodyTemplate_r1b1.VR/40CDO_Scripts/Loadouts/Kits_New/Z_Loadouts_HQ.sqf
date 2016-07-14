// 40Cdo - HQ Kits
_box = _this select 0;
_distance = 4;

_box addAction ["[40Cdo] Officer", "40CDO_Scripts\Loadouts\Kits_New\G_Officer.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[40Cdo] Sergeant", "40CDO_Scripts\Loadouts\Kits_New\G_Sergeant.sqf", [], 1, false, true, "", "_this distance _target < 4"];
