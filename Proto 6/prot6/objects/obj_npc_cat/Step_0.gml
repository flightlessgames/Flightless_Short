/// @description Insert description here
// You can write your code in this editor

if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) 
{
	switch(obj_pc1.quest2_state)
	{
		case 0:
			//dialog
			obj_gui.dialog_box[0] = "My Keycard is in my Room";
			obj_gui.dialog_box[1] = "Ask my roommate Fish";
			obj_gui.dialog_box[2] = "He'll let you in!";
			
			obj_pc1.quest2_state = 1;
			obj_gui.quest1_hint = "Talk to Duck";
			obj_gui.quest2_hint = "Talk to Cat's Roommate (Fish)";
			
			break;
			
		case 5:
			//5 = has keycard
			//dialog
			obj_gui.dialog_box[0] = "Oh cool, you have my Keycard";
			obj_gui.dialog_box[1] = "Just give it back when you're done."
			break;
		
		default:
			//dialog
			obj_gui.dialog_box[0] = "Have you found my Keycard?";
			obj_gui.dialog_box[1] = "Fish will let you in our room.";
			
			//ask about how quest is going
			//comment about dirty lettuce snack
			break;
	}
}