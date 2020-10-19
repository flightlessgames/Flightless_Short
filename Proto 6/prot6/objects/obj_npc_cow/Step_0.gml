/// @description Insert description here
// You can write your code in this editor

if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) 
{
	if obj_pc1.quest1_state[3] == 0
	{
		//no mayo
		if obj_pc1.quest4_state < 1
		{
			//dialog
			obj_gui.dialog_box[0] = "I can't really help you right now,";
			obj_gui.dialog_box[1] = "These fish need to get sorted away.";
			obj_gui.dialog_box[2] = "If you help with my chores I'll owe you one.";
			
			obj_gui.quest4_hint = "Sort Cow's Fish in Kitchen";
			obj_pc1.quest4_state = 0;
		}
		else
		{
			//solved fish game
			obj_pc1.quest1_state[3] = 1;
			
			//gain mayo dialog
			obj_gui.dialog_box[0] = "Thank you for helping me clean up";
			obj_gui.dialog_box[1] = "Here's that mayo you were looking for.";
			
			obj_gui.quest4_hint = "";
			quest1_sandwich_check();
		}
	}
	else
	{
		//dialog
		obj_gui.dialog_box[0] = "Keeping the Kitchen tidy is a lot of work";
		obj_gui.dialog_box[1] = "I'm glad to have friends that help out!";
	}
}