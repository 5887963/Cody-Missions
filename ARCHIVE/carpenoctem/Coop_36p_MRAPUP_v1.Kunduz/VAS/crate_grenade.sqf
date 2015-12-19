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
_this setVariable["bis_magazines",["HandGrenade"],true];

//Do not display items (radios, GPS etc.).
_this setVariable["bis_items",[],true];

//Do not display backpacks.
_this setVariable["bis_backpacks",[],true];

//Do not display goggles.
_this setVariable[],true];