/*
	Limited Box, this is a example of the many ways that you can limit certain items to a ammobox.
	In this example only MX Rifles, their mags and attachments are available, this type of configuration is similiar to
	using the variables VAS_x (weapons,items,magazines,backpacks,goggles) but instead we are storing an array of allowed items
	on the ammobox its self.
	
	What should be noted, whatever variable you do not set will resume the default configuration you had set through the config.sqf
*/
if(!isServer) exitWith {}; //This was executed through the init field and only the server should fill this box.

//Do not display weapons.
_this setVariable["bis_weapons",[],true];

//Display ammo used for training.
_this setVariable["bis_magazines",["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Red","hlc_30Rnd_9x19_B_MP5","1Rnd_HE_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","3Rnd_UGL_FlareWhite_F","3Rnd_UGL_FlareRed_F","3Rnd_UGL_FlareYellow_F","3Rnd_UGL_FlareGreen_F","9Rnd_45ACP_Mag","rhsusf_100Rnd_556x45_soft_pouch","hlc_100Rnd_762x51_M_M60E4","hlc_100Rnd_762x51_T_M60E4"],true];

//Do not display items (radios, GPS etc.).
_this setVariable["bis_items",[],true];

//Do not display backpacks.
_this setVariable["bis_backpacks",[],true];

//Do not display goggles.
_this setVariable[],true];