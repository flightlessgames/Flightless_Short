/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (obj_gui.con_tar == my_id)
	key_k = keyboard_check(ord("K"));	
else
	key_k = 0;
	
if (place_meeting(x,y+1,obj_wall))
	vsp=key_jump * -jumpspeed;