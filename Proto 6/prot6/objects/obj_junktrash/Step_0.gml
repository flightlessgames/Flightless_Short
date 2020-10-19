/// @description Insert description here
// You can write your code in this editor
if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) 
{
	if ++image_index > image_number - 1 
		instance_destroy();
}