// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function callback_ConnectToServer(){
//This function is called after a successfull connection
//You can edit this function to do anything...
	
	//show_message("WELCOMEEEEEEEEEEEEEEEE You connected as client with id "+ string(global.clientId)+" at time "+string(current_time))
	ChangeRoom("public")

}