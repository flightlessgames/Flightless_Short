/// @description Insert description here
// You can write your code in this editor
if (distance_to_point(mouse_x, mouse_y)<=1) && obj_gui.clicked
{
	obj_gui.clicked = false;
	
	if ++image_index > image_number - 1 
		instance_destroy();
}