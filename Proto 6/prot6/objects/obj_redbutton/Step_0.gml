/// @description Insert description here
// You can write your code in this editor
if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) 
{
	obj_gui.quest1_hint = "Press The Red Button";
	obj_gui.quest2_hint = "See What Happens Next";
	
	if ++image_index >= image_number - 1 
	{
		image_index = image_number - 1;
		
		obj_gui.quest1_hint = "";
		obj_gui.quest2_hint = "";
		obj_gui.quest3_hint = "You Win!";
		
		obj_pc1.pickup_txt = "+1 Red Button";
		obj_pc1.alarm[0] = obj_pc1.alarm_time;
		
		show_debug_message("Win Game");
	}
}