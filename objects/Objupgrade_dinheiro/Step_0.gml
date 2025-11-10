if place_meeting(x,y,ObjMouse){
	if mouse_check_button_pressed(mb_left){
		if global.dinheiro>=global.precoUpdinheiro{
			global.dinheiro -= global.precoUpdinheiro
			global.ganho *= mult
			global.precoUpdinheiro*=mult2
			
		}
	}
}