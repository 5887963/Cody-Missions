// 40Cdo - Russian PvP Kits
_box = _this select 0;
_distance = 4;

_box addAction ["[Russian] Squad Leader", "40CDO_Scripts\Loadouts\Kits_Russian\MSV_SquadIC.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Russian] Squad 2IC", "40CDO_Scripts\Loadouts\Kits_Russian\MSV_Squad2IC.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Russian] Rifleman", "40CDO_Scripts\Loadouts\Kits_Russian\MSV_Rifleman.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Russian] AT Rifleman", "40CDO_Scripts\Loadouts\Kits_Russian\MSV_AT_Rifleman.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Russian] Marksman", "40CDO_Scripts\Loadouts\Kits_Russian\MSV_Marksman.sqf", [], 1, false, true, "", "_this distance _target < 4"];
_box addAction ["[Russian] Gunner", "40CDO_Scripts\Loadouts\Kits_Russian\MSV_Gunner.sqf", [], 1, false, true, "", "_this distance _target < 4"];
