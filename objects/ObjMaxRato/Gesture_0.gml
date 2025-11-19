if  comprarMaxLimitada(precoAtual, multiplicador, global.kikuBranco, global.upgradeRatoMaximo, 0.05) > 0{
	quantCompras = comprarMaxLimitada(precoAtual, multiplicador, global.kikuBranco, global.upgradeRatoMaximo, 0.05) 
	custo =  custoMaxLimitado(precoAtual, multiplicador, global.kikuBranco, global.upgradeRatoMaximo, 0.05) 
	novoPreco = calcularNovoPreco(precoAtual, multiplicador, quantCompras)
	global.dinheiro -= custo
	compra = true
}

