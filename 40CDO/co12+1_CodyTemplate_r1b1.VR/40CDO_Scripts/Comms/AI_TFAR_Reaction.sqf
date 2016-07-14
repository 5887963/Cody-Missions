["event_TFR_onSpeak", "OnSpeak", { call CDO_fnc_TFR_setSpeakVar; }, player] call TFAR_fnc_addEventHandler;
["event_TFR_onSpeakVolume", "OnSpeakVolume", { call CDO_fnc_TFR_setVolumeVar; }, player] call TFAR_fnc_addEventHandler;
player setVariable ["CDO_var_speakVolume", 20, false]; // default state: normal is 20 meters

// Create variable and initialize script for checking if player is speaking
CDO_fnc_TFR_setSpeakVar = {
	player setVariable ["CDO_var_isSpeaking", _this select 1, false];
	[] spawn CDO_fnc_TFR_aiReact;
};

// Update the variable with the selected volume
CDO_fnc_TFR_setVolumeVar = {
	player setVariable ["CDO_var_speakVolume", _this select 1, false];
};

// Called for continuous checks to see if the player is speaking
CDO_fnc_TFR_aiReact = {
	private ["_isSpeaking", "_talkTime", "_dist", "_nearAI", "_nearAiSingle", "_revealAmount", "_newReveal"];
	_isSpeaking = player getVariable "CDO_var_isSpeaking";
	_talkTime = 0; // time someone has been speaking

	while {_isSpeaking} do {
		_talkTime = _talkTime + 0.25;
		_isSpeaking = player getVariable "CDO_var_isSpeaking";
		_dist = round ((player getVariable "CDO_var_speakVolume") / 1.5); // Divide the TFR speech distance by .5 to make gameplay more forgiving (3m, 13m, 40m) instead of (5m, 20m, 60m)

		// If player has been speaking for more than a second
		if (_talkTime >= 1.0) then {
			_nearAI = nearestObjects [player, ["Man"], _dist];
			_nearAI = _nearAI - allPlayers;

			{
				// Only handle if: _x is alive; _x isn't already aware of the player; and unit is not on the same team
				if ((alive _x) && !(_x knowsAbout player >= 4.0)) then {
					_nearAISingle = _x;

					// Start adding to reveal value if been speaking for more than a second
					if (_talkTime >= 1.0) then { _revealAmount = 0.2; };
					_newReveal = (_nearAiSingle knowsAbout player) + _revealAmount;
					
					//player sideChat format ["Debug: %1 hears you, for %2 - total: %3", _x, _revealAmount, _newReveal];
					[-2, {(_this select 0) reveal (_this select 1);}, [_nearAISingle, [player, _newReveal]]] call CBA_fnc_globalExecute;
				};
			} forEach _nearAi;
		};

		//player sideChat format ["Debug: speech distance is %1m", _dist];
		sleep 0.25;
	};
};
