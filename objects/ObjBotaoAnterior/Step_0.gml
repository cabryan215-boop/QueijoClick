if place_meeting(x,y,ObjMouse){
	if mouse_check_button_pressed(mb_left){
		/*
		instance_destroy(objBotao2)
		instance_create_layer(291,546,"instances",objBotao)
		layer_set_visible("instancesBotao2",false)
		*/
		if global.botaoAtual >= global.botaoMinimo{
			global.botaoAtual--
			
			
		}
		else{
			//Maior botao disponivel
			global.botaoAtual = 1
		}
		
		
		if global.NivelAtual < global.xpPreciso[global.botaoAtual]{
			global.isHabilatado = false
		}
		else{
			global.isHabilatado = true
		}
	
	}
}