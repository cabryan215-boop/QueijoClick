if  comprarMaxLimitada(precoAtual, multiplicador, global.kikupreto, global.upgradeCritMaximo, 5) > 0{
	quantCompras = comprarMaxLimitada(precoAtual, multiplicador, global.kikupreto,global.upgradeCritMaximo, 5) 
	custo =  custoMaxLimitado(precoAtual, multiplicador, global.kikupreto,global.upgradeCritMaximo, 5) 
	novoPreco = calcularNovoPreco(precoAtual, multiplicador, quantCompras)
	
	global.dinheiro -= custo
	
	compra = true
}

