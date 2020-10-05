/// @description Insert description here
// You can write your code in this editor

switch con_tar
{
	case 1:		
		draw_text(32,16,"Mothership");
		break;
	case 2:
		draw_text(32,40,"Oribter");
		break;
	case 3:
		draw_text(32,64,"Needle-nose");
		break;
	default:
		draw_text(16,16,"ERROR_INVALID_CON_TAR");
		break;
}

/*
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

if win == true
{
	draw_text(200,200,"WARP DRIVE REFUELED");
	draw_text(200,224,"YOU WIN!!");
	draw_text(200,248,"Press [K] to play again! Press [L] to exit");
}