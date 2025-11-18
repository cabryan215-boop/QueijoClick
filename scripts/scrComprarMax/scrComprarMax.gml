//Função para comprar o maximo de upgrades

/*
precoUP     == preço atual do upgrade
custoNivel  == multiplicador do valor por nivel
*/
function comprarMax(precoUP, custoNivel){
	
	//Custo total do maximo de upgrades, começa com o preço atual
	custo = precoUP
	
	//Enquanto o meu dinheiro for maior que a quantidade nescessária para aumentar
	//Continuo aumentando a quantidade de upgrades
	//Crio a variável i para representar a quantidade de upgrades feitos
	
	i = 0
	
	while global.dinheiro >= custo{
		//Se der para comprar um upgrade, i ++
		i++
		
		//Caso o próximo valor seja maior que o dinheiro disponivel, eu saio do laço de repetição
		if global.dinheiro < custo + custo * custoNivel{
			break
		}
		
		//Se não for menor, eu aumento o preço
		else{
			custo *= custoNivel
		}
	}
	
	//Assim que sair do laço de repetição, retorna a quantidade de upgrades possiveis
	return i
	
}