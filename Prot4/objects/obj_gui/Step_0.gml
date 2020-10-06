/// @description Moves Camera to Next Player

//set character
if keyboard_check_pressed(ord("I"))
{
	if ++con_tar > pc_count
		con_tar = 1;
}

//character viewport
switch con_tar
{
	default:
	case 1:
		camera_set_view_target(view_camera[0],obj_pc_ship1);
		if obj_pc_ship1.fuel <= 0
			con_tar = 2;
		break;
	case 2:
		camera_set_view_target(view_camera[0],obj_pc_ship2);
		break;
	case 3:
		if instance_exists(obj_pc_ship3)
			camera_set_view_target(view_camera[0],obj_pc_ship3);
		else
			con_tar = 1;
		break;
}

//win condition
if win == true
{
	if keyboard_check_pressed(ord("K"))
		game_restart();
	
	if keyboard_check_pressed(ord("L"))
		game_end();
}