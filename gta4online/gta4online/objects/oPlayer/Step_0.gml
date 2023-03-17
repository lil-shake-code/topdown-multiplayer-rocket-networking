
image_yscale = image_xscale
//MOVEMENT AND CAMERA
camera_set_view_pos(view_camera[0] , x - camera_get_view_width(view_camera[0])/2 , y-camera_get_view_height(view_camera[0])/2 )

image_alpha=1;
image_blend=c_white
//CLLISIONS

if(place_meeting(x+sign(hspeed),y+sign(vspeed),oWall)){
	speed=0
	image_angle = point_direction(x,y,mouse_x,mouse_y)
	
	
}else{
	
	image_angle = point_direction(x,y,mouse_x,mouse_y)
	direction = image_angle
	speed = keyboard_check(ord("W")) - keyboard_check(ord("S"))
	if(place_meeting(x,y,oWater)){ speed = 0.3*speed; image_alpha = 0.4;image_blend=c_aqua;}
}




var movementSprites = 

[
[sPlayer_handgun_idle,sPlayer_handgun_move,sPlayer_handgun_shoot], //handgun
[sPlayer_rifle_idle , sPlayer_rifle_move , sPlayer_rifle_shoot], //rifle
[sPlayer_shotgun_idle, sPlayer_shotgun_move , sPlayer_shotgun_shoot] //shotgun
]

//select a gun
if(keyboard_check_pressed(ord("1"))) gun=0;
if(keyboard_check_pressed(ord("2"))) gun=1;
if(keyboard_check_pressed(ord("3"))) gun=2;



//animations
if(sprite_index == movementSprites[gun][2]){
	//still in shooting
	if(image_index==3){
		//set to normal movement sprite
		sprite_index = movementSprites[gun][1]
		
	}
}else{

	if(speed == 0){
		sprite_index = movementSprites[gun][0]

	}else{
		sprite_index = movementSprites[gun][1]
	}
	

//shooting
}
var gunInfo = 
[
[2,2],
[3,1],
[1,3]
]
if(mouse_check_button_pressed(mb_left)){
		sprite_index = movementSprites[gun][2]
	
		repeat(gunInfo[gun][0]){
			var b = instance_create_layer(x + lengthdir_x(5,direction-30),y+ lengthdir_y(5,direction-30),"Instances",oBullet)
			b.speed = 2 + random(1)-0.5
			b.direction = image_angle + 5*(random(1) -0.5)
			b.image_blend = make_colour_hsv(random(255), 255, random(255));
			b.image_xscale = gunInfo[gun][1]
			b.image_yscale = b.image_xscale
			
			var be = instance_create_layer(b.x,b.y, "Instances", oMyEntity);
			//be.entityProperties._type = "bullet";
			be.bullet = b
			
			
			
			


		}
		
		
}

//MULTIPLAYER
global.sharedProperties = {
	_x : x,
	_y : y,
	_angle : image_angle,
	_health : health
}







