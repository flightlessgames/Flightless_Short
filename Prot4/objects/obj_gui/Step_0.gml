/// @description Moves Camera to Next Player
if keyboard_check_pressed(ord("I"))
{
	if ++con_tar > pc_count
		con_tar = 1;
}

switch con_tar
{
	default:
	case 1:
		camera_set_view_target(view_camera[0],obj_pc_ship1);
		break;
	case 2:
		camera_set_view_target(view_camera[0],obj_pc_ship2);
		//if (obj_pc_ship2.pc_battery <= 0)
		//	con_tar = 3;
		break;
	case 3:
		camera_set_view_target(view_camera[0],obj_pc_ship3);
		break;
}

if win == true
{
	if keyboard_check_pressed(ord("K"))
		game_restart();
	
	if keyboard_check_pressed(ord("L"))
		game_end();
}