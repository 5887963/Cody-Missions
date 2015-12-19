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

//Do not display ammo.
_this setVariable["bis_magazines",[],true];

//Do not display items (radios, GPS etc.).
_this setVariable["bis_items",[],true];

//Do not display backpacks
_this setVariable["bis_backpacks",[],true];

//Access to Contributor goggles.
_this setVariable["bis_goggles",["rhs_balaclava","G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","G_Balaclava_oli","G_Bandanna_aviator","G_Bandanna_beast","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_shades","G_Bandanna_sport","G_Bandanna_tan","rhs_scarf","TRYK_Shemagh_G","TRYK_Shemagh","TRYK_Shemagh_WH","TRYK_Shemagh_EAR_G","TRYK_Shemagh_EAR_TAN","TRYK_Shemagh_EAR_WH","TRYK_Shemagh_ESS_G","TRYK_Shemagh_ESS","TRYK_Shemagh_ESS_WH","TRYK_Shemagh_shade_G","TRYK_Shemagh_shade","TRYK_Shemagh_shade_WH","TRYK_kio_balaclava_BLK","TRYK_kio_balaclava_BLK_ear","TRYK_kio_balaclava_ESS"],true];