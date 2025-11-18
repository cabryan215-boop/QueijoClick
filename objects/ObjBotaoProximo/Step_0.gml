if place_meeting(x,y,ObjMouse){
	if mouse_check_button_pressed(mb_left){
		/*instance_destroy(objBotao)
		instance_create_layer(291,546,"instances",objBotao2)
		layer_set_visible("instancesBotao2",true)
		instance_destroy(ObjVida)*/
		
		//Se está no último botao
		if global.botaoAtual >=  global.botaoMaximo{
			//Volta parav o porimeiro
			global.botaoAtual = global.botaoMinimo
		}
		else{
			global.botaoAtual++
		}
		
		if global.NivelAtual < global.xpPreciso[global.botaoAtual]{
			global.isHabilatado = false
		}
		else{
			global.isHabilatado = true
		}
	}
}