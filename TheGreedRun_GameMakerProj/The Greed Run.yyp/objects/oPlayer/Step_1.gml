/// @description Insert description here
// You can write your code in this editor

/*
global.runSpd = 10;
global.jumpSpd = 10;
global.grav = 0.3;
*/

if(speedRing==1){
	global.runSpd=12;
	global.jumpSpd=12;
	global.grav = 0.3;
	speedRing=0;
}
if(jumperBoots==1){
	global.runSpd=5;
	global.jumpSpd=20;
	global.grav=0.2;
	jumperBoots=0;
}
if(fastBoots==1){
	global.runSpd=18;
	global.jumpSpd=5;
	global.grav=0.3;
	fastBoots=0;
}
if(WTFbracelet==1){
	global.runSpd=10;
	global.jumpSpd=8;
	global.grav=0.3;
	instance_destroy();
	WTFbracelet=0;
}
if(ohhGodWhyCrown==1){
	global.runSpd=25;
	global.jumpSpd=15;
	global.grav=0.3;
	ohhGodWhyCrown=0;
}
