// 40Cdo - Fire Support Group Kits
_box = _this select 0;
_distance = 4;

_box addAction ["[FSG] Section Commander", "40CDO_Scripts\Loadouts\Kits\FSG_SectionIC.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[FSG] FAC", "40CDO_Scripts\Loadouts\Kits\FSG_FAC.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[FSG] Rifleman", "40CDO_Scripts\Loadouts\Kits\FSG_Rifleman.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[FSG] AT Rifleman", "40CDO_Scripts\Loadouts\Kits\FSG_AT_Rifleman.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[FSG] AT Rifleman (Mortar No. 2)", "40CDO_Scripts\Loadouts\Kits\FSG_AT_Rifleman_Mortar.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[FSG] Sniper", "40CDO_Scripts\Loadouts\Kits\FSG_Sniper.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[FSG] Gunner", "40CDO_Scripts\Loadouts\Kits\FSG_Gunner.sqf", [], 1, false, true, "", "_this distance _target < 4"];
