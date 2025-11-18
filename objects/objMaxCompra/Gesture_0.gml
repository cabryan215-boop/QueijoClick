if  comprarMax(precoAtual, multiplicador) > 0{
	custo =  power(precoAtual, comprarMax(precoAtual, multiplicador))
	global.dinheiro -= custo
	compra = true
}

