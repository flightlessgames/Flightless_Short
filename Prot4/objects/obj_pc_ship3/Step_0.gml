/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

move = power(propulsionspeed,(key_up - key_down)) * movespeed;

//turning
theta_move = (key_right - key_left) * theta_speed;
theta += theta_move;
	
image_angle = -theta * 180 / pi;

//moving
hsp = cos(theta) * move;
vsp = sin(theta) * move;

//explode
if key_j == 1
{
	obj_pc_ship1.ship3_instance = 0;
	//explode
	
	instance_destroy();
	
}