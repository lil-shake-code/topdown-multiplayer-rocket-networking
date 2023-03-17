// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PreConnect(){
	var url = "https://rocket-networking-default-rtdb.firebaseio.com/users/"+global.SERVERID+"/serverURL.json";
	get = http_get(url);
	show_debug_message("Asking RNet backend to give us our server information from this URL. "+url)

	
	global.clientId = -1 //not set anything yet
	global.roomId = -1 //not set anything yet
	global.lastCheckedArrayOfAllRooms = ["please check once using ShowAllRooms()"]


}