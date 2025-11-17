if ! global.isHabilatado{
	sprite_index = SprBotaoIndisponivel
	exit
}

global.ai=global.dano * 5
global.ae= global.ganho[global.botaoAtual] * global.dinheiroGanho * 5
if mouse_check_button_pressed(mb_left) and place_meeting(x,y,ObjMouse){
	sprite_index=global.botaoEscolhido[global.botaoAtual][1]
	
	instance_create_layer(mouse_x+10,mouse_y+10,"instances",ObjDano)
	instance_create_layer(mouse_x,mouse_y,"instances",ObjGanho)
	
	numale=irandom_range(1,100)
	
	if numale <=global.kikupreto{
		global.danoDado = global.ai
		global.dinheiroRecebido = global.ae 
		sprite_index= global.botaoEscolhido[global.botaoAtual][2]
		
	}
	else{
		global.danoDado = global.dano 
		global.dinheiroRecebido = global.ganho[global.botaoAtual] * global.dinheiroGanho
		
	}
	
	//Ganha o dinheiro
	global.dinheiro+=global.dinheiroRecebido
	
	//Recebe o dano
	global.vidaAtual[global.botaoAtual]-=global.danoDado
	
	if global.vidaAtual[global.botaoAtual] <= 0{
		global.vidaAtual[global.botaoAtual] = global.vidaTotal[global.botaoAtual]
		global.quantiBotaoDestruidos+=1
		global.Xp+=global.ganhoXP[global.botaoAtual]
		global.dinheiro+=1000
	}
	
	if global.Xp>=global.xpNecessaria{
		global.xpNecessaria*=1.5
		global.Xp=0
		global.NivelAtual+=1
	
	}	
}
else{
	sprite_index= global.botaoEscolhido[global.botaoAtual][0]
}