/// @description Insert description here
// You can write your code in this editor

draw_self();
// set facing
if (hsp >=1)
	image_xscale = -1;
else if (hsp <=-1)
	image_xscale = 1;

draw_text(x-16,y-48, pickup_txt);