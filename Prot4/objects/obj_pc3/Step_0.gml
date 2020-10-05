/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (obj_gui.con_tar == my_id)
	key_jump = keyboard_check_pressed(ord("J"));
else
	key_jump = 0;

if (place_meeting(x,y+1,obj_wall)) && (key_jump == 1)
{
	vsp = key_jump * -jumpspeed * jump_charge;
	jump_charge = 0;
}

if (pc_battery >= 1) && (jump_charge < jump_max)
{
	jump_charge += 0.01;
	pc_power -= 2;
	if (jump_charge > jump_max)
		jump_charge = jump_max;
}

if hsp<>0
	drain_power();