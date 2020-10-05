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

//respawn