if place_meeting(x,y,ObjMouse){
	if mouse_check_button_pressed(mb_left){
		if global.dinheiro>=global.precoUpRato{
			global.dinheiro -= global.precoUpRato
			global.precoUpRato*=mult2
			global.kikuBranco+=0.05
			
		}
	}
}