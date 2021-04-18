x1=argument0;
y1=argument1;
x2=argument2;
y2=argument3;
//text = argument4;

draw_rectangle(x1,y1,x2,y2,true){
	draw_text(((x1+x2)/2), ((y2-y1)/2),string("this will be text later")); 
	
}