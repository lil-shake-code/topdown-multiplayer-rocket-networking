/// @description Update this entity as much as you want
/*
* Update this struct
*/
if(bullet!=-1)
{
	if(instance_exists(bullet)){
		entityProperties = {
			_entityId : entityId,
			//Add stuff here like type / x / y / whatever
			_x : bullet.x,
			_y : bullet.y,
			_colour : bullet.image_blend
	


		}
	}else{
		instance_destroy()
	}
}

