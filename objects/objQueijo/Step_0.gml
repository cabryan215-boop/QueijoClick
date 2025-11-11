global.ai=global.dano * 5
global.ae=global.ganho * 5
global.kikupreto=100
if mouse_check_button_pressed(mb_left) and place_meeting(x,y,ObjMouse){
	sprite_index=sprQueijoClicando
	
	instance_create_layer(mouse_x+10,mouse_y+10,"instances",ObjDano)
	instance_create_layer(mouse_x,mouse_y,"instances",ObjGanho)
	
	numale=irandom_range(1,global.kikupreto)
	
	if numale==1{
		global.danoDado = global.ai
		global.dinheiroRecebido = global.ae
		sprite_index=SprqueijoClick
		
	}
	else{
		global.danoDado = global.dano
		global.dinheiroRecebido = global.ganho
		
	}
	
	global.dinheiro+=global.dinheiroRecebido
	global.queijo-=global.danoDado
}
else{
	sprite_index=sprQueijo
}