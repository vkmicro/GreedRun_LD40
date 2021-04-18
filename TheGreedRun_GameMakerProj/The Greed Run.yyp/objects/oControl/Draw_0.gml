/// @description Insert description here
// You can write your code in this editor

//CHANEG THIS TO BE WITH CAMERA NOT PLAYER!
/*
draw_set_color(c_black);
draw_rectangle(oPlayer.x - 512, oPlayer.y - 480, oPlayer.x - 400, oPlayer.y - 420, false);
draw_set_color(c_white);
draw_text(oPlayer.x-500, oPlayer.y-475, "Score: " + string(global.coins));
*/
draw_set_font(font2);
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

draw_set_color(c_black);
draw_rectangle(cx+20,cy+20,cx+150,cy+50, false);
draw_set_color(c_white);
draw_text(cx+20,cy+25, "Coins: " + string(global.coins));

draw_set_color(c_black);
draw_rectangle(cx+500,cy+10,cx+600,cy+50, false);
draw_set_color(c_white);
draw_text(cx+512,cy+20, "Time: " + string(global.timer));


draw_text(cx+20,cy+500, "Gods are Punishing you: ");
draw_text(cx+20,cy+530, "gravity effect " + string(global.grav));
draw_text(cx+20,cy+560, "Run speed " + string(global.runSpd));
draw_text(cx+20,cy+590, "Jump height " + string(global.jumpSpd));
draw_text(cx+20,cy+620, "Floor grabbing you, jump to escape its hold");

with(oPlayer){
	if(place_meeting(x,y,oCheckPoint)){
		draw_text(cx+20,cy+100,"Checkpoint");	
	}
	/*
	speedRing=0;
	fastBoots=0;
	jumperBoots=0;
	rocketBoots=0;
	WTFbracelet=0;
	ohhGodWhyCrown=0;
	*/
	if(speedRing!=0){
		draw_sprite(sRing,0,cx, cy-100);
	}
	
}
