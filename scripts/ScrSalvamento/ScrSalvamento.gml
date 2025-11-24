function salvarJogo(){
	ini_open("save.ini")
	
	
	ini_write_real("Nivel","nivelAtual",global.NivelAtual)
	ini_write_real("Nivel","quantXp",global.Xp)
	ini_write_real("Botao","botaoSelect",global.botaoAtual)
	ini_write_real("Dano","DanoAtual",global.dano)
	//ini_write_real("Custo","custoAtual",global.custo)
	ini_write_real("Dinheiro","DinheiroTotal",global.dinheiro)
	ini_write_real("Dinheiro","QuantGanha",global.dinheiroGanho)
	ini_write_real("dinheiro","dinheiroRecebido",global.dinheiroRecebido)
	ini_write_real("Chance","Torreta",global.kikuBranco)
	ini_write_real("Chance","chanceCrit",global.kikupreto)
	ini_write_real("Preço","upDano",global.precoUpDano)
	ini_write_real("Preço","upCrit",global.precoUpcrit)
	ini_write_real("Preço","upRato",global.precoUpRato)
	ini_write_real("Preço","upDinheiro",global.precoUpdinheiro)
	ini_write_real("Quant","QuantBotaoDestroi",global.quantiBotaoDestruidos)
	ini_write_real("Quant","QuantXpNessesario",global.xpNecessaria)
	
	i = 0
	//Salvando vetores

	while i < global.botaoMaximo{
		ini_write_real("VidaBotoes", "vidaAtualBotao" + string(i), global.vidaAtual[i])
		ini_write_real("quant","Xp" +string(i), global.ganhoXP[i])
		ini_write_real("quant","Ganho" + string(i), global.ganho[i])
		ini_write_real("quant","Vida" + string(i), global.queijo[i])
		ini_write_real("quant","XpPreciso" + string(i), global.xpPreciso[i])
		
	
		i ++
	}
	
	ini_close();
}

//Função para carregar os dados salvos
function carregarJogo(){
	ini_open("save.ini")
	
	
	global.NivelAtual = ini_read_real("Nivel","nivelAtual",0)
	global.xpAtual=ini_read_real("Nivel","quantXp",global.Xp)
	global.BotaoAtual=ini_read_real("Botao","botaoSelect",0)
	global.danoTotal=ini_read_real("Dano","DanoAtual",global.dano)
	//global.custototal=ini_read_real("Custo","custoAtual",global.custo)
	global.dinheiro=ini_read_real("Dinheiro","DinheiroTotal",0)
	global.DinheiroGanhoTotal=ini_read_real("Dinheiro","QuantGanha",global.dinheiroGanho)
	global.DinheiroRecebido=ini_read_real("dinheiro","dinheiroRecebido",global.dinheiroRecebido)
	global.KIkubrancoatual=ini_read_real("Chance","Torreta",global.kikuBranco)
	global.kikupretoAtual=ini_read_real("Chance","chanceCrit",global.kikupreto)
	global.PrecoUpDanoAtual=ini_read_real("Preço","upDano",global.precoUpDano)
	global.PrecoUpCritAtual=ini_read_real("Preço","upCrit",global.precoUpcrit)
	global.PrecoUpRatoAtual=ini_read_real("Preço","upRato",global.precoUpRato)
	global.PrecoUpDinheiroAtual=ini_read_real("Preço","upDinheiro",global.precoUpdinheiro)
	global.quantBlocoDestruidoTotal=ini_read_real("Quant","QuantBotaoDestroi",global.quantiBotaoDestruidos)
	global.QuantXpNessesarioAtual=ini_read_real("Quant","QuantXpNessesario",global.xpNecessaria)
	
	i = 0
	//Salvando vetores
	
	while i < global.botaoMaximo{
		
		
		global.vidaAtual[i] = ini_read_real("VidaBotoes", "vidaAtualBotao" + string(i), global.vidaTotal[i])
		global.xp[i]=ini_read_real("quant","Xp" + string(i), global.ganhoXP[i])
		global.GanhoTotal[i]=ini_read_real("quant","Ganho" + string(i), global.ganho[i])
		global.vida=ini_read_real("quant","Vida" + string(i), global.queijo[i])
		global.xpTotal[i]=ini_read_real("quant","XpPreciso" + string(i), global.xpPreciso[i])
	
	
		i ++
	}
	
	ini_close();
}