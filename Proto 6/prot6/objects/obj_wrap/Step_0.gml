/// @description Insert description here
// You can write your code in this editor
// on step

if (pair <> 0) && (warp_state == true) && (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) 
{
	obj_pc1.x = pair.x;
	obj_pc1.y = pair.y;
}

// end step