/// @description What this entity has?
// You can write your code in this editor

clientId = global.clientId; //this is your entity, like a bullet
oBrain.entitiesCreated++;
entityId = oBrain.entitiesCreated
array_push(oBrain.entitiesActive , entityId);



/*
* Add your variables in this entityproperties
*/
entityProperties = {
	_entityId : entityId
	//Add stuff here like type / x / y / whatever


}

bullet = -1