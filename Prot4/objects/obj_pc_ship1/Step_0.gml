/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

move = (key_up - key_down) * movespeed;

theta_move = (key_right - key_left) * theta_speed;
theta += theta_move;
	
image_angle = -theta * 180 / pi;

hsp = cos(theta) * move;
vsp = sin(theta) * move;