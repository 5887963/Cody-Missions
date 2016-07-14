// 40Cdo - Section Kits
_box = _this select 0;
_distance = 4;

_box addAction ["[Section] Section Commander", "40CDO_Scripts\Loadouts\Kits\H_SectionIC.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Section] Section 2IC", "40CDO_Scripts\Loadouts\Kits\H_Section2IC.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Section] Rifleman", "40CDO_Scripts\Loadouts\Kits\H_Rifleman.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Section] AT Rifleman", "40CDO_Scripts\Loadouts\Kits\H_AT_Rifleman.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Section] Grenadier", "40CDO_Scripts\Loadouts\Kits\H_Grenadier.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Section] Marksman", "40CDO_Scripts\Loadouts\Kits\H_Marksman.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Section] Gunner", "40CDO_Scripts\Loadouts\Kits\H_Gunner.sqf", [], 1, false, true, "", "_this distance _target < 4"];
