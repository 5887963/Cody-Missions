#define SAFETY_ZONES [["CDO_mkr_infSpawn", 150]]

if (isDedicated) exitWith {};
waitUntil {!isNull player};

player addEventHandler ["Fired", {
	if (_this select 2 == "HandGrenadeMuzzle") then {
		if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then {
			deleteVehicle (_this select 6);
		};
	};
}];