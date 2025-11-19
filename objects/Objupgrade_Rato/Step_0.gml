if place_meeting(x,y,ObjMouse){
	if mouse_check_button_pressed(mb_left){
		if global.dinheiro>=global.precoUpRato and global.kikuBranco < global.upgradeRatoMaximo{
			global.dinheiro -= global.precoUpRato
			global.precoUpRato*=global.multRato
			global.kikuBranco+=0.05
			
		}
	}
}