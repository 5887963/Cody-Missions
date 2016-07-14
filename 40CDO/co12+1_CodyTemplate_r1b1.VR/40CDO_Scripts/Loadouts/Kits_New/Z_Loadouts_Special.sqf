// 40Cdo - Specialisation Kits
_box = _this select 0;
_distance = 4;

_box addAction ["[40Cdo] Assault Engineer Section Commander", "40CDO_Scripts\Loadouts\Kits_New\G_Engineer_IC.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[40Cdo] Assault Engineer", "40CDO_Scripts\Loadouts\Kits_New\G_Engineer.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[40Cdo] Medical Assistant", "40CDO_Scripts\Loadouts\Kits_New\G_MedicalAsst.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[40Cdo] Signaller", "40CDO_Scripts\Loadouts\Kits_New\G_Signaller.sqf", [], 1, false, true, "", "_this distance _target < 4"];
