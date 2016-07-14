// 40Cdo - HQ Kits
_box = _this select 0;
_distance = 4;

_box addAction ["[HQ] Officer", "40CDO_Scripts\Loadouts\Kits\H_TroopCommander.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[HQ] Troop Sergeant", "40CDO_Scripts\Loadouts\Kits\H_TroopSergeant.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[HQ] Troop Medic", "40CDO_Scripts\Loadouts\Kits\H_TroopMedic.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[HQ] Troop Medic Asst.", "40CDO_Scripts\Loadouts\Kits\H_TroopMedicAsst.sqf", [], 1, false, true, "", "_this distance _target < 4"];
