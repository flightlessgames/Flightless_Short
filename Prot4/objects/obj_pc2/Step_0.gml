/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (obj_gui.con_tar == my_id)
{
	key_up = -keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
}
else
{
	key_up = 0;
	key_down = 0;
}

vmove = key_up + key_down;
	
if (pc_power >= 1)
	vsp = vmove * movespeed;
	
if (vsp < maxfall) && (pc_battery <= 0)
	grav = 0.2;
else
	grav = 0;
	
if hsp<>0
	drain_power();
		
if !place_meeting(x,y+1,obj_wall)
	drain_power();