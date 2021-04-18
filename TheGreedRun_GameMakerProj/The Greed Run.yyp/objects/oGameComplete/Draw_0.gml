draw_set_font(font1);
xx=room_width/2;
yy=room_height/2;

//draw_set_color(c_black);
//draw_set_alpha(0.8);
//draw_rectangle(xx-300,yy-200,xx+300,yy+200,false);
draw_set_color(c_white);
draw_text(xx-250,yy-100,"Good job, you completed the game and reached the end.");
//draw_text(xx-200,yy-50,"Your time was: " + string(time));
//draw_text(xx-200,yy,"Coins remaining: " + string(global.coins));
draw_text(xx-250,yy+30, "To close the game press 'ESC'. Thanks for playing!!!!!!");

draw_text(xx-200,yy+200, "Game made by: Vasiliy Ulin");
draw_text(xx-200,yy+220, "Tools used: ");
draw_text(xx-200,yy+250, "Game Maker Studio 2");
draw_text(xx-200,yy+270, "SFXR, BFXR, beepbox");




