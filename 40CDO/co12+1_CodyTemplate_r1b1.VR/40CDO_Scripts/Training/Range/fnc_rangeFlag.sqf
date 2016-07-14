CDO_fnc_RifleRange_handleFlag = {
	_flag = _this select 3 select 0;
	if (flagTexture _flag == "") then { [-2, {(_this select 0) setFlagTexture "\A3\Data_F\Flags\Flag_red_CO.paa";}, [_flag]] call CBA_fnc_globalExecute; } else { [-2, {(_this select 0) setFlagTexture "";}, [_flag]] call CBA_fnc_globalExecute; };
};

RifleRange_Flag addAction ["Raise/Lower Warning Flag", {_this call CDO_fnc_RifleRange_handleFlag;}, [RifleRange_Flag], 1, false, true, "", "_this distance _target < 6"];