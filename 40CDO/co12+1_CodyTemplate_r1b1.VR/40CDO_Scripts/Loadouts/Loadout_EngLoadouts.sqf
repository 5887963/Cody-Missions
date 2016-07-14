// 40Cdo - Engineer Kits
_box = _this select 0;
_distance = 4;

_box addAction ["[24RE] Engineer 1IC", "40CDO_Scripts\Loadouts\Kits\E_Engineer_IC.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[24RE] Engineer Kit #1", "40CDO_Scripts\Loadouts\Kits\E_Engineer_1.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[24RE] Engineer Kit #2", "40CDO_Scripts\Loadouts\Kits\E_Engineer_2.sqf", [], 1, false, true, "", "_this distance _target < 4"];
