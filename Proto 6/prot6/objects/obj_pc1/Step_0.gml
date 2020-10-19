/// @description Insert description here
// You can write your code in this editor
// on step

if dialogue_pause == false
{
	key_right = keyboard_check(ord("D"));
	key_left = -keyboard_check(ord("A"));
	key_up = -keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));	
}
else
{
	key_right = 0;
	key_left = 0;
	key_up = 0;
	key_down = 0;
}
	
// calculate movement
hmove = key_left + key_right;
hsp = hmove * movespeed;

vmove = key_up + key_down;
vsp = vmove * movespeed;


//no diagonal movement
if (hsp <>0)
	vsp = 0;

//horizontal movement
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
        x += sign(hsp);
		
    hsp = 0;
}
x += hsp;		
	
// Verticle movement
if (place_meeting(x,y+vsp,obj_wall))
{
    while (!place_meeting(x,y+sign(vsp),obj_wall))
        y += sign(vsp);

    vsp = 0;
}  
y += vsp;
// end step