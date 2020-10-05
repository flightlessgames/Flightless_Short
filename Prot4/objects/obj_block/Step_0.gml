/// @description Push and Pull
hsp = 0;

if place_meeting(x+1,y,obj_wall) || place_meeting(x+1,y,obj_pc_parent)
	hsp = -1;
	
if place_meeting(x-1,y,obj_wall) || place_meeting(x-1,y,obj_pc_parent)
	hsp = 1;

if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
		x += sign(hsp);

	hsp = 0;
}
x += hsp;


//vertical input
vsp += grav;

//vertical collision
if (place_meeting(x,y+vsp,obj_wall)) && (vsp != 0)
{
	while (!place_meeting(x,y+sign(vsp),obj_wall))
		y += sign(vsp);

	vsp = 0;
}
	
y += vsp;