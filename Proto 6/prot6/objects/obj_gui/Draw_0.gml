/// @description Insert description here
// You can write your code in this editor
draw_self();

switch(obj_pc1.quest2_state)
{
	case 3:
		draw_sprite(spr_clam,0,x,y);
		break;
	case 5:
		draw_sprite(spr_card,0,x,y);
}


if obj_npc_duck.my_state
	draw_sprite(spr_card,0,x+16,y);
else
{
	state = true;
	for (i = 0; i < array_length(obj_pc1.quest1_state); i++)
	{
		if obj_pc1.quest1_state[i] == false
			state = false;
	}

	if state == true
		draw_sprite(spr_sandwich,0,x+16,y);
	else
	{
		if obj_pc1.quest1_state[0] == 1
			draw_sprite(spr_bread,0,x+16,y);
		
		if obj_pc1.quest1_state[1] == 1
			draw_sprite(spr_lettuce,0,x+32,y);
		
		if obj_pc1.quest1_state[2] = 1
			draw_sprite(spr_cucumber,0,x+48,y);
		else if obj_pc1.quest3_state = 1
			draw_sprite(spr_shovel,0,x+80,y);
		
		if obj_pc1.quest1_state[3] == 1
			draw_sprite(spr_mayo,0,x+64,y);
	}
}