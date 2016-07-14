// 40Cdo - Recruit Training Kits
_box = _this select 0;
_distance = 4;


_box addAction ["[Training] Recruit", "40CDO_Scripts\Loadouts\Kits\T_Recruit.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Training] Instructor", "40CDO_Scripts\Loadouts\Kits\T_Instructor.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Training] Enemy Instructor", "40CDO_Scripts\Loadouts\Kits\T_HostileInstructor.sqf", [], 1, false, true, "", "_this distance _target < 4"];
