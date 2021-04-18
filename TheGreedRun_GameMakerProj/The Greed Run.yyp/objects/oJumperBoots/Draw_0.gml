/// @description Insert description here
// You can write your code in this editor

//draws self top right corner of the camera IF picked up
draw_self();

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

if(place_meeting(x,y,oPlayer)){
	draw_set_color(c_black);
	draw_rectangle(x-200,y+20,x+200,y,false);
	draw_set_color(c_white);
	draw_text(x-180, y,"Jumpy Boots. Cost: 300 coins, 'F' to buy");
}
