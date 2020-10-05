/// @description Insert description here
// You can write your code in this 
if (place_meeting(x,y-1,obj_pc_parent)) || (place_meeting(x,y-1,obj_wall))
{
	image_index = 1;
	state = true;
}
else
{
	image_index = 2;
	state = false;
}