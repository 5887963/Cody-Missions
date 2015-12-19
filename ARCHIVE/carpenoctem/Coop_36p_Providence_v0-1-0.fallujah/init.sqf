MCC_syncOn = false;
ACRE_TEST_OCCLUSION = false;
[0.2] call acre_api_fnc_setLossModelScale;
tawvd_disablenone = true;
enableSaving [false, false];
enableSentences false;

//loadout stuff
waitUntil {!isNull player};
getLoadout = compile preprocessFileLineNumbers 'get_loadout.sqf';
setLoadout = compile preprocessFileLineNumbers 'set_loadout.sqf';
sleep 2;
loadout = [player] call getLoadout;
player addEventHandler ["Respawn",{[player,loadout] spawn setLoadout;}];