// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function callback_ShowAllRooms(array_of_rooms){
	//What do you want to do with the array of all 
	// rooms on your server?
	show_message(string(is_array(array_of_rooms)) +"  "+ string(array_of_rooms));
	
}