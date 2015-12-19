//baseFlight.sqf - exec to add 2 A10's to ambient list

sleep 60;
[[-1000,10000,27],[8529,8186,0],100,"FULL","RHS_AH64D_wd",WEST] call BIS_fnc_ambientFlyby;
[[-900,10000,27],[8529,8186,0],100,"FULL","RHS_AH64D_wd",WEST] call BIS_fnc_ambientFlyby;
sleep 180;
[[-100,10000,27],[4529,7086,0],100,"FULL","RHS_A10",WEST] call BIS_fnc_ambientFlyby;
[[-900,10000,27],[4529,7086,0],100,"FULL","RHS_A10",WEST] call BIS_fnc_ambientFlyby;