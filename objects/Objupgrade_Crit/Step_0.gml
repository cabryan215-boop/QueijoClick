if place_meeting(x,y,ObjMouse){
	if mouse_check_button_pressed(mb_left){
		if global.dinheiro>=global.precoUpcrit{
			global.dinheiro -= global.precoUpcrit
			global.precoUpcrit*=global.multCrit
			global.kikupreto+=5
			
		}
	}
}