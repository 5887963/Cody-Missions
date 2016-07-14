// 40Cdo - Aviation Kits
_box = _this select 0;
_distance = 4;

_box addAction ["[CHF] ASOC", "40CDO_Scripts\Loadouts\Kits_New\A_ASOC.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[CHF] Pilot #1", "40CDO_Scripts\Loadouts\Kits_New\A_RotaryPilot_1.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[CHF] Pilot #2", "40CDO_Scripts\Loadouts\Kits_New\A_RotaryPilot_2.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[CHF] Fast Jet Pilot", "40CDO_Scripts\Loadouts\Kits_New\A_JetPilot.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[CHF] Ground Crew", "40CDO_Scripts\Loadouts\Kits_New\A_GroundCrew.sqf", [], 1, false, true, "", "_this distance _target < 4"];
