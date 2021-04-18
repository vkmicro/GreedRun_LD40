/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,oPlayer)){
	with(oPlayer){
		instance_destroy();	
		audio_play_sound(death,6,false);
	}
}