// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChangeRoom(roomId){
	
	//format for sending info to server 
		var Buffer = buffer_create(1, buffer_grow, 1)
	
		//WHAT DATA 
		var data = ds_map_create();
		data[? "serverId"] = global.SERVERID;
		//whatever data you want to send as key value pairs
		data[? "roomId"] = roomId;
		data[? "clientId"] = global.clientId;
		ds_map_add(data,"eventName","change_room");
		buffer_write(Buffer, buffer_text, json_encode(data))
		network_send_raw(socket, Buffer, buffer_tell(Buffer),network_send_text)
		buffer_delete(Buffer)
		ds_map_destroy(data)

}