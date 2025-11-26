a=global.dinheiro * global.kikuBranco
x += velocidade * direcao

if x > room_width{
	direcao = - 1
}

image_xscale = direcao

if x < - 100{
	instance_destroy()
}
if place_meeting(x,y,ObjMouse){
	if mouse_check_button_pressed(mb_left){
		instance_destroy()
		global.dinheiro+=a
	}
}	