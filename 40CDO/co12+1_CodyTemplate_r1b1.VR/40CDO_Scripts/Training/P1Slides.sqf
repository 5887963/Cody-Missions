_obj = _this select 0;
_whiteboard = _this select 1;


// INITIALISE WHITEBOARD
if (isDedicated || isServer) then {
	_whiteboard setObjectTextureGlobal [0, "\40cdo_signs\Slides\Cover.paa"];
};


// INITIALISATION
_obj addAction ["<t color='#FF5733'>Reset Slide</t>", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\Cover.paa"], 1, false, true, "", "_this distance _target < 2"];

_obj addAction ["<t color='#CC3300'>[Show P1:FM Slides]</t>", {_this call CDO_fnc_FMState_showOptions;}, [], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_FMState_isDisabled"];
_obj addAction ["<t color='#33CCFF'>[Hide P1:FM Slides]</t>", {_this call CDO_fnc_FMState_hideOptions;}, [], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_FMState_isEnabled"];
_obj addAction ["--> Rules", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\Foundation\Rules.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_FMState_isEnabled"];
_obj addAction ["--> Rank Structure #1", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\Foundation\RankSlides.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_FMState_isEnabled"];
_obj addAction ["--> Rank Structure #2", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\Foundation\RankSlides_2.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_FMState_isEnabled"];
_obj addAction ["--> Weapon: Glock 17", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\Foundation\Glock17.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_FMState_isEnabled"];
_obj addAction ["--> Weapon: L85A2", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\Foundation\L85.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_FMState_isEnabled"];
_obj addAction ["--> Weapon: L86A2 LSW", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\Foundation\L86A2.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_FMState_isEnabled"];
_obj addAction ["--> Weapon: L129A1 DMR", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\Foundation\L129A1.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_FMState_isEnabled"];
_obj addAction ["--> Weapon: L110A2 Minimi", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\Foundation\L110A2.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_FMState_isEnabled"];
_obj addAction ["--> Weapon: GPMG", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\Foundation\GPMG.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_FMState_isEnabled"];
_obj addAction ["--> Weapon: HMG", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\Foundation\HMG.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_FMState_isEnabled"];

_obj addAction ["<t color='#CC3300'>[Show P1:ASM Slides]</t>", {_this call CDO_fnc_ASState_showOptions;}, [], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_ASState_isDisabled"];
_obj addAction ["<t color='#33CCFF'>[Hide P1:ASM Slides]</t>", {_this call CDO_fnc_ASState_hideOptions;}, [], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_ASState_isEnabled"];
_obj addAction ["--> Medical: Casualty Types", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\AdvancedSkills\CasualtyTypes.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_ASState_isEnabled"];
_obj addAction ["--> Medical: Bandage Chart", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\AdvancedSkills\BandageChart.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_ASState_isEnabled"];
_obj addAction ["--> Weapon: ILAW", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\AdvancedSkills\ILAW.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_ASState_isEnabled"];
_obj addAction ["--> Weapon: NLAW", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\AdvancedSkills\NLAW.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_ASState_isEnabled"];
_obj addAction ["--> Weapon: Javelin", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\AdvancedSkills\Javelin.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_ASState_isEnabled"];
_obj addAction ["--> Formation: Single File", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\AdvancedSkills\Formation_File.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_ASState_isEnabled"];
_obj addAction ["--> Formation: Staggerd File", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\AdvancedSkills\Formation_StaggeredFile.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_ASState_isEnabled"];
_obj addAction ["--> Formation: Arrowhead", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\AdvancedSkills\Formation_Arrowhead.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_ASState_isEnabled"];
_obj addAction ["--> Formation: Baseline", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\AdvancedSkills\Formation_Baseline.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_ASState_isEnabled"];
_obj addAction ["--> Formation: Herringbone", {_this call CDO_fnc_setSlide;}, [_whiteboard, "\40cdo_signs\Slides\AdvancedSkills\Formation_Herringbone.paa"], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_ASState_isEnabled"];

_obj addAction ["<t color='#CC3300'>[Show P2:OWM Slides]</t>", CDO_fnc_enableOWM, [], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_checkEnableOWM"];
_obj addAction ["<t color='#33CCFF'>[Hide P2:OWM Slides]</t>", CDO_fnc_disableOWM, [], 1, false, true, "", "(_this distance _target < 2) && call CDO_fnc_checkDisableOWM"];


/* SLIDE OPTIONS */
CDO_fnc_setSlide = {
	_whiteboard = _this select 3 select 0;
	_image = _this select 3 select 1;
	_whiteboard setObjectTextureGlobal [0, _image];
};


/* FOUNDATION MODULE FUNCTIONS */
CDO_fnc_FMState_isDisabled = {
	_return = false;
	if (isNil {player getVariable "CDO_var_FMState"}) then {
		_return = true;
	};
	_return
};
CDO_fnc_FMState_isEnabled = {
	_return = false;
	if (player getVariable "CDO_var_FMState") then {
		_return = true;
	};
	_return
};
CDO_fnc_FMState_showOptions = {
	player setVariable ["CDO_var_FMState", true];
};
CDO_fnc_FMState_hideOptions = {
	player setVariable ["CDO_var_FMState", nil];
};


/* ADVANCED SKILLS MODULE FUNCTIONS */
CDO_fnc_ASState_isDisabled = {
	_return = false;
	if (isNil {player getVariable "CDO_var_ASState"}) then {
		_return = true;
	};
	_return
};
CDO_fnc_ASState_isEnabled = {
	_return = false;
	if (player getVariable "CDO_var_ASState") then {
		_return = true;
	};
	_return
};
CDO_fnc_ASState_showOptions = {
	player setVariable ["CDO_var_ASState", true];
};
CDO_fnc_ASState_hideOptions = {
	player setVariable ["CDO_var_ASState", nil];
};


/* OPERATIONS OF WAR MODULE FUNCTIONS */
CDO_fnc_OWState_isDisabled = {
	_return = false;
	if (isNil {player getVariable "CDO_var_OWState"}) then {
		_return = true;
	};
	_return
};
CDO_fnc_OWState_isEnabled = {
	_return = false;
	if (player getVariable "CDO_var_OWState") then {
		_return = true;
	};
	_return
};
CDO_fnc_OWState_showOptions = {
	player setVariable ["CDO_var_OWState", true];
};
CDO_fnc_OWState_hideOptions = {
	player setVariable ["CDO_var_OWState", nil];
};
