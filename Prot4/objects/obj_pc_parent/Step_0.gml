/// @description Insert description here
// You can write your code in this editor

if (obj_gui.con_tar == my_id)
{
	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	key_jump = keyboard_check_pressed(ord("J"));
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

move = key_right - key_left;
hsp = move * movespeed;

if move > 0
	image_xscale = 1;
else if move < 0
	image_xscale = -1;

if (vsp<maxfall)
	vsp += grav;

if (place_meeting(x,y+vsp,obj_wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_wall))
		y += sign(vsp);

	vsp = 0;
}
y += vsp;

if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
		x += sign(hsp);

	hsp = 0;
}
x += hsp;