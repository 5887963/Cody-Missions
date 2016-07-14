enableSaving [false, false];
enableSentences false;
[] execVM "exec\aitohc.sqf";
/*[] spawn {
	scriptName "initMission.hpp: mission start";
	["rsc\ARMA_3.ogv", false] spawn BIS_fnc_titlecard;	
	waitUntil {!(isNil "BIS_fnc_titlecard_finished")};
	[getMarkerPos "respawn_west",localize "STR_cody_uavBrief",150,150,180,0,[],0] spawn BIS_fnc_establishingShot;
};*/