
if place_meeting(x,y,ObjMouse){
	if mouse_check_button_pressed(mb_left){
		if global.dinheiro>=global.precoUpDano{
			global.dinheiro -= global.precoUpDano
			
			global.dano *= global.mult
			
			global.precoUpDano*=global.multDano
			
		}
	}
}