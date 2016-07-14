// 40Cdo - Training Kits
_box = _this select 0;
_distance = 4;

_box addAction ["[40Cdo] Instructor", "40CDO_Scripts\Loadouts\Kits_New\T_Instructor.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[40Cdo] Recruit", "40CDO_Scripts\Loadouts\Kits_New\T_Recruit.sqf", [], 1, false, true, "", "_this distance _target < 4"];
