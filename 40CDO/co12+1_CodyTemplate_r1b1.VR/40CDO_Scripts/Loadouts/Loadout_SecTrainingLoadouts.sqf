// 40Cdo - Training Kits
_box = _this select 0;
_distance = 4;

_box addAction ["[Training] Officer", "40CDO_Scripts\Loadouts\Kits\T_TroopCommander.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Training] Troop Medic", "40CDO_Scripts\Loadouts\Kits\T_TroopMedic.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Training] Section Commander", "40CDO_Scripts\Loadouts\Kits\T_SectionIC.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Training] Section 2IC", "40CDO_Scripts\Loadouts\Kits\T_Section2IC.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Training] Rifleman", "40CDO_Scripts\Loadouts\Kits\T_Rifleman.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Training] Grenadier", "40CDO_Scripts\Loadouts\Kits\T_Grenadier.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Training] Marksman", "40CDO_Scripts\Loadouts\Kits\T_Marksman.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Training] Gunner", "40CDO_Scripts\Loadouts\Kits\T_Gunner.sqf", [], 1, false, true, "", "_this distance _target < 4"];
