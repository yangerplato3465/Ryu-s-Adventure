if(keyboard_check_pressed(ord("S"))){
	//create root list
	var rootList = ds_list_create();
	
	//for every instance, create a map
	with(oParentSaveMe){
		var map = ds_map_create();
		ds_list_add(rootList, map);
		ds_list_mark_as_map(rootList, ds_list_size(rootList) - 1);
		
		var obj = object_get_name(object_index);
		ds_map_add(map, "obj", obj);
		ds_map_add(map, "cheeseCount", cheeseCount);
		ds_map_add(map, "deathCount", deathCount);
		ds_map_add(map, "room", room);
	}
	
	//wrap the root list up in a map
	var wrapper = ds_map_create();
	ds_map_add_list(wrapper, "ROOT", rootList);
	
	//save all of this to a string
	var str = json_encode(wrapper);
	SaveStringToFile("savedgame.sav", str);
	
	//Nuke the data
	ds_map_destroy(wrapper);
	
	show_debug_message("Saved");
}

if(keyboard_check_pressed(ord("L"))){
	if(file_exists("savedgame.sav")){
		var wrapper = LoadJSONFromFile("savedgame.sav");
		var list = wrapper[? "ROOT"];
		
		for(var i = 0; i < ds_list_size(list); i++){
			var map = list[| i];
			
			var obj = map[? "obj"];
			with(instance_create_layer(0, 0, layer, asset_get_index(obj))){
				cheeseCount = map[? "cheeseCount"];
				deathCount = map[? "deathCount"];
				room = map[? "room"];
			}
		}
		ds_map_destroy(wrapper);
		show_debug_message("Loaded");
	}
}