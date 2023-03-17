/// @description Do something with this entity

if(entityProperties!=-1){
var EP = json_parse(entityProperties)
lifetime++;
/*
This is every instance of another entity in the room you are in
You can use the key-value pairs in these properties
to do stuff here. For starters, try updating
x = SP._x
y = SP._y
or whatever you want to update in any way from
your entityProperties
*/

try{
	if(lifetime<5){
	x = real(EP._x)
	y = real(EP._y)
	
	}else{
	x = real(EP._x)*0.5 + 0.5*x
	y = real(EP._y)*0.5 + 0.5*y
	image_blend = EP._colour
	}
	
	if(place_meeting(x,y,oPlayer)){
		health-=5
	}
	
	
	
	
	
	
	
	
	
	
	
}catch(e){}

}
//DO NOT PUT YOUR CODE AFTER THIS LINE

