// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function callback_ShowAllClientsInRoom(array_of_clients){
	//What do you want to do with the array of all 
	// client ids in this room?
	if(array_of_clients == -1){
		show_message("room does not exist")
	}
	if(is_array(array_of_clients)){
		show_message( string(array_of_clients));
	}
}