// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShowAllClientsInRoom(room_name){
	
	//send shared proerties to your server
	//format for sending info to server 
	var Buffer = buffer_create(1, buffer_grow, 1)
	
	//WHAT DATA 
	var data = ds_map_create();
	data[? "serverId"] = global.SERVERID;
	//whatever data you want to send as key value pairs

	
	
	ds_map_add(data,"roomName",room_name);
	ds_map_add(data,"eventName","show_all_clients_in_room");
	buffer_write(Buffer, buffer_text, json_encode(data))
	network_send_raw(socket, Buffer, buffer_tell(Buffer),network_send_text)
	buffer_delete(Buffer)
	ds_map_destroy(data)

}