_nul = [this] spawn {
	while {true} do {
		waitUntil {
			sleep 1; count ((getposATL (_this select 0)) nearEntities [["car"],25]) > 0
		}; (_this select 0) animate ["Door_1_rot", 1];
		waitUntil {
			sleep 1; count ((getposATL (_this select 0)) nearEntities [["car"],25]) == 0
		}; (_this select 0) animate ["Door_1_rot", 0];
	};
};