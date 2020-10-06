/// @description HUD
// You can write your code in this editor

//debug text/HUD
draw_text(10,4, "Ship1 Fuel: " + string(obj_pc_ship1.fuel / (obj_pc_ship1.fuel_max/100)));
draw_text(10,20, "Ship1 Minerals: " + string(obj_pc_ship1.metals));
if instance_exists(obj_pc_ship3)
	draw_text(10,36, "Ship3 Fuel: " + string(obj_pc_ship3.fuel / (obj_pc_ship3.max_fuel/100)));
else
	draw_text(10,36, "Ship3 Disabled.");

draw_text(10,52, "Ship3_Istance: " + string(obj_pc_ship1.ship3_instance));

//character selector
switch con_tar
{
	case 1:		
		draw_text(10,100,"Mothership");
		break;
	case 2:
		draw_text(10,68,"Oribter");
		break;
	case 3:
		draw_text(10,84,"Needle-nose");
		break;
	default:
		draw_text(10,100,"ERROR_INVALID_CON_TAR");
		break;
}

/*
//zone identifiers
switch zone
{
	case 0:
		zone_txt = "Floatsom";
		break;
	case 1:
		zone_txt = "Engine Room";
		break;
	case 2:
		zone_txt = "Cargo Hold";
		break;
	case 3:
		zone_txt = "Bridge";
		break;
	case 4:
		zone_txt = "Airlock";
		break;
	default:
		zone_txt = "";
		break;
}

draw_text(200,16,zone_txt);
*/

//win text
if win == true
{
	draw_text(200,200,"WARP DRIVE REFUELED");
	draw_text(200,224,"YOU WIN!!");
	draw_text(200,248,"Press [K] to play again! Press [L] to exit");
}