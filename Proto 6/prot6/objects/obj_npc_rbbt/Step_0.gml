/// @description Insert description here
// You can write your code in this editor

if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) 
{
	if obj_pc1.quest1_state[2] == 0
	{
		switch (obj_pc1.quest3_state)
		{
			case -1:
				//start shovel quest
				obj_pc1.quest3_state = 0;
			
				//dialog
				obj_gui.dialog_box[0] = "I would help you, but I need a shovel";
				obj_gui.dialog_box[1] = "This dirt is too tough for me";
				obj_gui.dialog_box[2] = "Maybe Raccoon would have something to help dig.";
			
				obj_gui.quest3_hint = "Search Raccoon's Room for a Shovel";
				break;
			
			case 0:
				//dialog
				obj_gui.dialog_box[0] = "A shovel would be perfect";
				obj_gui.dialog_box[1] = "If you find one, that is.";
				break;
			
			case 1:
				//has shovel, gain cucumber
				//dialog
				obj_gui.dialog_box[0] = "I'll dig you up a cucumber Right Now";
				obj_gui.dialog_box[1] = "This shovel makes things so much easier!";
			
				obj_pc1.quest1_state[2] = 1;
				obj_gui.quest3_hint = "";
				
				obj_pc1.pickup_txt = "-1 Shovel";
				obj_pc1.alarm[0] = obj_pc1.alarm_time;
				
				quest1_sandwich_check();
				break;
			
			default:
				//same dialog as case 0?
				obj_gui.dialog_box[0] = "DEFAULT";
				break;
		}
	}
	else
	{
		//dialog
		obj_gui.dialog_box[0] = "With this shovel, my chores will be a breeze!";
		obj_gui.dialog_box[1] = "Thank you for your help!";
	}
}