if mouse_check_button_pressed(mb_left) and place_meeting(x,y,ObjMouse){
	sprite_index=sprQueijoClicando
	global.dinheiro+=global.ganho
	global.queijo-=global.dano
	instance_create_layer(mouse_x+10,mouse_y+10,"instances",ObjDano)
	instance_create_layer(mouse_x,mouse_y,"instances",ObjGanho)
}
else{
	sprite_index=sprQueijo
}
