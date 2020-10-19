/// @description Insert description here
// You can write your code in this editor
if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) 
{
	if obj_pc1.quest3_state = 0
		obj_gui.quest3_hint = "Trade the Shovel with Rabbit for Cucumbers";
	
	obj_pc1.quest3_state = 1;
	
	obj_pc1.pickup_txt = "+1 Shovel";
	obj_pc1.alarm[0] = obj_pc1.alarm_time;
	instance_destroy();
}