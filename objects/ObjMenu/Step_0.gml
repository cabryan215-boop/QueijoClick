if place_meeting(x,y,ObjMouse){
	if mouse_check_button_pressed(mb_left){
		
		layer_set_visible("Menu", ! layer_get_visible("Menu"))
		
		layer_set_visible("ImagemMenu", !layer_get_visible("ImagemMenu"))	
	}
}