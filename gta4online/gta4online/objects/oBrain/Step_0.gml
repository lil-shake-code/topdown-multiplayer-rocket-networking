/// @description shares your stuff. Do not Tamper!


/*
if(mouse_check_button_pressed(mb_left)){
	var room_name = get_string("Enter the room you want to join " , "public")
	ChangeRoom(room_name)
	

}
if(mouse_check_button_pressed(mb_right)){
	ShowAllClientsInRoom(get_string("which room to scout","public"));
}

if(keyboard_check_pressed(ord("D"))){
	DisconnectFromServer();
}



if(keyboard_check_pressed(ord("L"))){
	LeaveRoom();
}
*/
try{

//send shared proerties to your server
//format for sending info to server 
var Buffer = buffer_create(1, buffer_grow, 1)
	
//WHAT DATA 
var data = ds_map_create();
data[? "serverId"] = global.SERVERID;
//whatever data you want to send as key value pairs

data[? "clientId"] = global.clientId;
data[?"sharedProperties"] = json_stringify(global.sharedProperties)
if(variable_instance_exists(oBrain,"socket")){
ds_map_add(data,"eventName","state_update");
buffer_write(Buffer, buffer_text, json_encode(data))
network_send_raw(socket, Buffer, buffer_tell(Buffer),network_send_binary)
buffer_delete(Buffer)
ds_map_destroy(data)
}







}catch(e){
show_debug_message("Waiting for connection, so properties are not being shared at the moment. This should go in a few seconds if you have a good internet connection.")
show_debug_message(e)
}
//global.sharedProperties._x = mouse_x
//global.sharedProperties._y = mouse_y