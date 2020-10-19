/// @description Insert description here
// You can write your code in this editor

if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) 
{
	switch(obj_pc1.quest2_state)
	{
		case 1:
			//dialog
			obj_gui.dialog_box[0] = "Who knows where my Clam is!?";
			obj_gui.dialog_box[1] = "Perhaps Raccoon knows...";
			obj_gui.dialog_box[2] = "He has a lot of junk in his room...";
			
			obj_pc1.quest2_state = 2;
			obj_gui.quest2_hint = "Find Fish's Clam in Raccoon's Room";
			doors[0].warp_state = true;
			
			break;
			
		case 3:
			//dialog
			obj_gui.dialog_box[0] = "Oh thank you for finding my Clam!";
			obj_gui.dialog_box[1] = "I'll let you into my bunkroom now";
			
			obj_pc1.quest2_state = 4;
			obj_gui.quest2_hint = "Find Cat's Keycard in their Room";
			doors[1].warp_state = true;
			
			obj_pc1.pickup_txt = "-1 Clam";
			obj_pc1.alarm[0] = obj_pc1.alarm_time;

			break;
		
		default:
			//dialog
			obj_gui.dialog_box[0] = "I love my Clam so very much";
			obj_gui.dialog_box[1] = "I can't sleep without it.";
			
			break;
	}
}