_obj = _this select 0; // The object to assign the addAction to.
_rangeType = _this select 1; // Rifle/CQM, handles what actions to give it.

// INITIALISATION
if (_rangeType == "Rifle") then {
	_obj addAction ["<t color='#FF9933'>Give Full Magazine</t>", {_this call CDO_fnc_rangeGiveMagazine;}, [100, rifleRangeArea], 999, false, true, "", "_this distance _target < 4"];
	_obj addAction ["<t color='#FF9933'>Give 30Rnd Magazine</t>", {_this call CDO_fnc_rangeGiveMagazine;}, [30, rifleRangeArea], 999, false, true, "", "_this distance _target < 4"];;
	_obj addAction ["<t color='#FF9933'>Give 10Rnd Magazine</t>", {_this call CDO_fnc_rangeGiveMagazine;}, [10, rifleRangeArea], 997, false, true, "", "_this distance _target < 4"];
	_obj addAction ["<t color='#FF9933'>Give 9Rnd Magazine</t>", {_this call CDO_fnc_rangeGiveMagazine;}, [9, rifleRangeArea], 997, false, true, "", "_this distance _target < 4"];
	_obj addAction ["<t color='#FF9933'>Give 5Rnd Magazine</t>", {_this call CDO_fnc_rangeGiveMagazine;}, [5, rifleRangeArea], 996, false, true, "", "_this distance _target < 4"];
} else {
	_obj addAction ["<t color='#FF9933'>Give 10Rnd Primary Magazine</t>", {_this call CDO_fnc_rangeGiveMagazine;}, [10, cqmRangeArea], 997, false, true, "", "_this distance _target < 4"];
	_obj addAction ["<t color='#FF9933'>Give 2x9Rnd Pistol Magazine</t>", {_this call CDO_fnc_rangeGivePistolMagazine;}, [9, cqmRangeArea], 999, false, true, "", "_this distance _target < 4"];
};

CDO_fnc_rangeGiveMagazine = {
	_ammo = _this select 3 select 0;
	_range = _this select 3 select 1;
	
	{
		_unit = _x;
		_mag = "";

		if (primaryWeapon _unit == "UK3CB_BAF_L85A2" || primaryWeapon _unit == "UK3CB_BAF_L85A2_EMAG" || primaryWeapon _unit == "UK3CB_BAF_L85A2_RIS" || primaryWeapon _unit == "UK3CB_BAF_L85A2_UGL" || primaryWeapon _unit == "L86A2") then { _mag = "UK3CB_BAF_30Rnd"; };
		if (primaryWeapon _unit == "UK3CB_BAF_L110A2") then { _mag = "UK3CB_BAF_100Rnd"; };
		if (primaryWeapon _unit == "UK3CB_BAF_L129A1_FGrip") then { _mag = "UK3CB_BAF_20Rnd"; };
		if (primaryWeapon _unit == "UK3CB_BAF_L7A2") then { _mag = "UK3CB_BAF_75Rnd"; };
		
		//hint format ["selected: %1, (%2)", _mag, _unit];
			
		if (_ammo == 100) then { _unit addMagazines [_mag, 1]; };
		if (_mag != "" && _ammo != 100) then { _unit addMagazine [_mag, _ammo]; };
	} forEach (list _range);
};

CDO_fnc_rangeGivePistolMagazine = {
	_ammo = _this select 3 select 0;
	_range = _this select 3 select 1;
	
	{
		_unit = _x;
		
		_unit addMagazine ["UK3CB_BAF_17Rnd_9mm", _ammo];
		_unit addMagazine ["UK3CB_BAF_17Rnd_9mm", _ammo];
	} forEach (list _range);
};
