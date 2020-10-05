/// @description Insert description here
// You can write your code in this editor
if obj_gui.con_tar == my_id
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	key_j = keyboard_check_pressed(ord("J"));
}
else
{
	key_left = 0;
	key_right = 0;
	key_up = 0;
	key_down = 0;
	key_j = 0;
}

if place_meeting(x+hsp,y,obj_wall)
{
	while(!place_meeting(x+sign(hsp),y,obj_wall))
		x += sign(hsp);
		
	hsp = 0;
}
x += hsp;

if place_meeting(x,y+vsp,obj_wall)
{
	while(!place_meeting(x,y+sign(vsp),obj_wall))
		y += sign(vsp)
		
	vsp = 0;
}
y += vsp;