/// @description Insert description here
// You can write your code in this editor
if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) 
{
	room_goto(asset_get_index("Minigame"));
	obj_pc1.quest4_state = 1;
	obj_gui.quest4_hint = "Talk to Cow";
	
	obj_pc1.pickup_txt = "+1 Chore";
	obj_pc1.alarm[0] = obj_pc1.alarm_time;
}