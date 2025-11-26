function salvarJogo(){
	ini_open("save.ini")
	
	
	ini_write_real("Nivel","nivelAtual",global.NivelAtual)
	ini_write_real("Nivel","quantXp",global.Xp)
	ini_write_real("Botao","botaoSelect",global.botaoAtual)
	ini_write_real("Dano","DanoAtual",global.danoDado)
	//ini_write_real("Custo","custoAtual",global.custo)
	ini_write_real("Dinheiro","DinheiroTotal",global.dinheiro)
	ini_write_real("Dinheiro","QuantRecebido",global.dinheiroRecebido)
	ini_write_real("Dinheiro","QuantGanha",global.dinheiroGanho)
	//ini_write_real("dinheiro","dinheiroRecebido",global.dinheiroRecebido)
	ini_write_real("Chance","Torreta",global.kikuBranco)
	ini_write_real("Chance","chanceCrit",global.kikupreto)
	ini_write_real("Preço","upDano",global.precoUpDano)
	ini_write_real("Preço","upCrit",global.precoUpcrit)
	ini_write_real("Preço","upRato",global.precoUpRato)
	ini_write_real("Preço","upDinheiro",global.precoUpdinheiro)
	ini_write_real("Quant","QuantBotaoDestruidos",global.quantiBotaoDestruidos)
	ini_write_real("Quant","QuantXpNessesario",global.xpNecessaria)
	//ini_write_real("quant","Ganho", global.ganho)
	i = 0
	//Salvando vetores

	while i < global.botaoMaximo{
		ini_write_real("VidaBotoes", "vidaAtualBotao" + string(i), global.vidaAtual[i])
		ini_write_real("quant","Xp" +string(i), global.ganhoXP[i])
		
		//ini_write_real("quant","Vida" + string(i), global.queijo[i])
		ini_write_real("quant","XpPreciso" + string(i), global.xpPreciso[i])
		
	
	
		i ++
	}
	
	ini_close();
}

//Função para carregar os dados salvos
function carregarJogo(){
	ini_open("save.ini")
	
	
	global.NivelAtual = ini_read_real("Nivel","nivelAtual",0)
	global.xpAtual=ini_read_real("Nivel","quantXp",0)
	global.BotaoAtual=ini_read_real("Botao","botaoSelect",0)
	global.dano=ini_read_real("Dano","DanoAtual",1)
	//global.custototal=ini_read_real("Custo","custoAtual",global.custo)
	global.dinheiro=ini_read_real("Dinheiro","DinheiroTotal",1)
	global.DinheiroGanho=ini_read_real("Dinheiro","QuantGanha",1)
	//global.DinheiroRecebido=ini_read_real("dinheiro","dinheiroRecebido",global.dinheiroRecebido)
	global.kikuBranco=ini_read_real("Chance","Torreta",0.1)
	global.kikupreto=ini_read_real("Chance","chanceCrit", 1)
	global.PrecoUpDano=ini_read_real("Preço","upDano",100)
	global.PrecoUpCrit=ini_read_real("Preço","upCrit",150)
	global.PrecoUpRato=ini_read_real("Preço","upRato",150)
	global.PrecoUpDinheiro=ini_read_real("Preço","upDinheiro",100)
	global.quantiBotaoDestruidos=ini_read_real("Quant","QuantBotaoDestruidos",0)
	global.xpNecessaria=ini_read_real("Quant","QuantXpNessesario",10)
	global.dinheiroRecebido=ini_read_real("Dinheiro","QuantRecebido",1)

	i = 0
	//Salvando vetores
	
	while i < global.botaoMaximo{
		
		
		global.vidaAtual[i] = ini_read_real("VidaBotoes", "vidaAtualBotao" + string(i), global.vidaTotal[i])
		global.xp[i]=ini_read_real("quant","Xp" + string(i), global.ganhoXP[i])
		//global.Ganho[i]=ini_read_real("quant","Ganho" + string(i), global.ganho[i])
		global.vida=ini_read_real("quant","Vida" + string(i), global.queijo[i])
		global.xpTotal[i]=ini_read_real("quant","XpPreciso" + string(i), global.xpPreciso[i])
	
	
		i ++
	}
	
	ini_close();
}