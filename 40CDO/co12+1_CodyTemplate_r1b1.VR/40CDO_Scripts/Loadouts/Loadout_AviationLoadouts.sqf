// 40Cdo - Aviation Kits
_box = _this select 0;
_distance = 4;

_box addAction ["[846NAS] ASOC", "40CDO_Scripts\Loadouts\Kits\A_ASOC.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[846NAS] Pilot Kit #1", "40CDO_Scripts\Loadouts\Kits\A_RotaryPilot_1.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[846NAS] Pilot Kit #2", "40CDO_Scripts\Loadouts\Kits\A_RotaryPilot_2.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[846NAS] Fast Jet Pilot", "40CDO_Scripts\Loadouts\Kits\A_FixedPilot.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[846NAS] Ground Crew", "40CDO_Scripts\Loadouts\Kits\A_GroundCrew.sqf", [], 1, false, true, "", "_this distance _target < 4"];
