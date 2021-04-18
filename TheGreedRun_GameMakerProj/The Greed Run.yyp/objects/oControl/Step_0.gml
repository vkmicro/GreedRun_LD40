/// @description Insert description here
// You can write your code in this editor
draw_set_font(font2);
age+=1;
if(age mod 60 == 0){
	drawText=1;	
	if(room == rMainLevel){
		global.timer+=1;
	}
}
if(room!=rMainLevel){
	audio_stop_sound(backgroundMusic);	
}


if(keyboard_check_pressed(vk_escape)){
	game_end();
}
if(keyboard_check_pressed(ord("R"))){
	game_restart();	
}

if(instance_exists(oPlayer)){

	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"))){
		oPlayer.jump = true;	//or should i have the jump code physics in here too?	
	}
	if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
		oPlayer.mLeft = true;
	}
	if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
		oPlayer.mRight = true;	
	}


	with(oPlayer){
		if(place_meeting(x,y,oSpeedRing)&&global.coins>=100){	//OR ANY OTHER OBJECT
			if(keyboard_check(ord("F"))){
				//instance_destroy(oSpeedRing);
				oSpeedRing.pickedUp=1;
				oPlayer.speedRing = 1;
				global.coins-=100;
			}
		}
		if(place_meeting(x,y,oOhhMyGodWhyCrown)&&global.coins>=500){	
			if(keyboard_check(ord("F"))){
				//instance_destroy(oSpeedRing);
				oOhhMyGodWhyCrown.pickedUp=1;
				oPlayer.ohhGodWhyCrown = 1;
				global.coins-=500;
			}
		}
		if(place_meeting(x,y,oJumperBoots)&&global.coins>=300){	//OR ANY OTHER OBJECT
			if(keyboard_check(ord("F"))){
				//instance_destroy(oSpeedRing);
				oJumperBoots.pickedUp=1;
				oPlayer.jumperBoots = 1;
				global.coins-=300;
			}
		}
		if(place_meeting(x,y,oFastBoots)&&global.coins>=300){	//OR ANY OTHER OBJECT
			if(keyboard_check(ord("F"))){
				//instance_destroy(oSpeedRing);
				oFastBoots.pickedUp=1;
				oPlayer.fastBoots = 1;
				global.coins-=300;
			}
		}
		if(place_meeting(x,y,oWTFbracelet)&&global.coins>=700){	//OR ANY OTHER OBJECT
			if(keyboard_check(ord("F"))){
				//instance_destroy(oSpeedRing);
				oWTFbracelet.pickedUp=1;
				oPlayer.WTFbracelet = 1;
				global.coins-=700;
			}
		}
	}
	
	
	
	/*
	global.grav = 0.3;
	global.hspd = 0;
	global.vspd = 0;
	global.runSpd = 10;
	global.jumpSpd = 10;
	*/
	if (age mod 120 == 0){
		statsUpdated = 0;	
	}

	if(global.grav >= 0.1 && global.runSpd >= 0.1 && global.jumpSpd>=0.1 && age mod 60 == 0){
		if(global.coins>5 && global.coins < 15 && statsUpdated != 1){
			global.runSpd -= 0.001;
			global.jumpSpd -= 0.001;
			statsUpdated=1;
		}else if(global.coins>15 && global.coins < 25 && statsUpdated != 1){
			global.runSpd -= 0.0018;
			global.jumpSpd -= 0.0018;
			statsUpdated=1;
		}else if(global.coins>25 && global.coins < 50 && statsUpdated != 1){	
			global.runSpd -= 0.0059;
			global.jumpSpd -= 0.0059;
			statsUpdated=1;
		}else if(global.coins>50 && global.coins < 150 && statsUpdated != 1){
			global.runSpd -= 0.019;
			global.jumpSpd -= 0.019;
			statsUpdated=1;
		}else if(global.coins>150 && global.coins < 300 && statsUpdated != 1){
			global.runSpd -= 0.069;
			global.jumpSpd -= 0.059;
			statsUpdated=1;
		}else if(global.coins>300 && global.coins < 500 && statsUpdated != 1){
			if(age mod 120 == 0){
//				global.grav += 0.001;	
				global.runSpd -= 0.079;
				global.jumpSpd -= 0.079;
			}
		}else if(global.coins>500){
			if(age mod 120 == 0){
//				global.grav += 0.005;	
				global.runSpd -= 0.99;
				global.jumpSpd -= 0.99;
			}
		}
	}
	if(boughtThings){
		if(global.coins<100 && age mod 60 == 0){
			global.runSpd += 2;
			global.jumpSpd += 2;
		}else if(global.coins <50 && age mod 60 == 0){
			global.runSpd +=4;
			global.jumpSpd += 4;
		}
	}
	if(global.runSpd ==0){
		global.runSpd +=0.5;	
	}
	if(global.jumpSpd ==0){
		global.jumpSpd +=1;	
	}
}