/// @description Put your other player code here
try{
if(sharedProperties!=-1){
var SP = json_parse(sharedProperties)

/*
This is every instance of another player in the room you are in
You can use the key-value pairs in shared properties
to do stuff here. For starters, try updating
x = SP._x
y = SP._y
or whatever you want to update in any way from
your sharedProperties
*/


	x = real(SP._x) *0.5 + 0.5*x
	y = real(SP._y) *0.5 + 0.5*y
	image_angle = SP._angle
	enemy_health = SP._health





}
}catch(e){}
//DO NOT PUT YOUR CODE AFTER THIS LINE

