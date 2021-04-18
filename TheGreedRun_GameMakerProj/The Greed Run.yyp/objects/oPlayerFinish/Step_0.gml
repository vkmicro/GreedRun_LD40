if(instance_exists(oPlayer)){
	right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
	left = -(keyboard_check(vk_left) || keyboard_check(ord("A")));
	jumpKey = (keyboard_check_pressed(vk_space)
				|| keyboard_check_pressed(ord("W"))
				|| keyboard_check_pressed(vk_up));	//end jumpKey checks
			
	move = left + right;
	global.hspd = move * global.runSpd;
	if(global.vspd < 10) {
		global.vspd += global.grav;
	}


	if(place_meeting(x,y+2,oFloorTile)){
		global.vspd = jumpKey * - global.jumpSpd;	//jumping speed if the jumpKey pressed
	}

	//horizontal collision
	if(place_meeting(x+global.hspd,y-1,oFloorTile)){
		while(!place_meeting(x+sign(global.hspd),y,oFloorTile)){
			x+=sign(global.hspd);	
		}
		global.hspd=0;
	}
	x+=global.hspd;

	//vertical collision
	if(place_meeting(x,y+global.vspd,oFloorTile)){
		while(!place_meeting(x,y+sign(global.vspd),oFloorTile)){
			y+=sign(global.vspd)+global.grav;	
		}
		global.vspd=0;
	}

	y+=global.vspd;
	
	if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
		sprite_index=sPlayerRunR;
		image_speed=0.8;
		image_xscale=1;
	}else if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
		sprite_index=sPlayerRunR;
		image_speed=0.8;
		image_xscale=-1;
	}else{
		sprite_index=sPlayerIdle;	
	}
	
	
}



////////items
