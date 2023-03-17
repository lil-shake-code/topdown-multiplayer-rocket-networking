try{

	//show_message(json_encode(ds_map_find_value(async_load,"id")))
	PORT=443
	var res = ds_map_find_value(async_load,"result");
	//show_message("res is "+res)
	if(string_length(res)>15){
		//this is a paid dude
		show_debug_message("Connecting to paid private server")
		res = string_delete(res,1,1)
		res = string_delete(res,string_length(res),1);
		socket = network_create_socket(network_socket_wss)
		PORT=443
	}else{
		//freeloader
		show_debug_message("connecting to free public server")
		res = string_delete(res,1,1)
		res = string_delete(res,string_length(res),1);
		socket = network_create_socket(network_socket_ws)
		PORT=3000
		
	}

	IP = res

	
	show_debug_message("Trying to connect to "+res)
	connect=network_connect_raw_async(socket, IP,PORT)
	show_debug_message("connect is "+string(connect))

}catch(e){
show_debug_message("Error in connecting. Please contact sales")
show_debug_message(e)

}