if  comprarMax(precoAtual, multiplicador) > 0{
	quantCompras = comprarMax(precoAtual, multiplicador)
	custo =  custoMax(precoAtual, multiplicador)
	
	novoPreco = calcularNovoPreco(precoAtual, multiplicador, quantCompras)
	
	global.dinheiro -= custo
	
	compra = true
}

