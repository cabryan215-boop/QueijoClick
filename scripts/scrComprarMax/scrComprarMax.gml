//Função para comprar o maximo de upgrades

/*
precoUP     == preço atual do upgrade
custoNivel  == multiplicador do valor por nivel
*/
function comprarMax(precoUP, custoNivel){
	
	//Recebe a quantidade de dinheiro atual
	dinheiro = global.dinheiro
	
	//Custo total do maximo de upgrades, começa com o preço atual
	custo = precoUP
	
	//Enquanto o meu dinheiro for maior que a quantidade nescessária para aumentar
	//Continuo aumentando a quantidade de upgrades
	//Crio a variável i para representar a quantidade de upgrades feitos
	
	i = 0
	
	while dinheiro >= custo{
		//Se der para comprar um upgrade, i ++
		i++
		
		//Caso o próximo valor seja maior que o dinheiro disponivel, eu saio do laço de repetição
		/*if global.dinheiro < custo + custo * custoNivel{
			break
		}
		
		//Se não for menor, eu aumento o preço
		else{*/
		
		//Desconta o custo
		dinheiro -= custo
		
		//Recalcula o valor
		
		custo *= custoNivel
		
		//}
	}
	
	//Assim que sair do laço de repetição, retorna a quantidade de upgrades possiveis
	return i
	
}

//Retorna o custo total
function custoMax(precoUP, custoNivel){
	
	//Recebo o dinheiro atual
	dinheiro = global.dinheiro
	
	//Custo do upgrades, começa com o preço atual
	custo = precoUP
	
	//Custo Total
	custoTotal =0
	
	while dinheiro >= custo{
		//Soma o custo Total
		custoTotal += custo
		
		//Desconta o custo
		dinheiro -= custo
		
		//Recalcula o custo
		custo *= custoNivel
	}
	
	//Assim que sair do laço de repetição, retorna a quantidade de upgrades possiveis
	return custoTotal
}


//Função para comprar o maximo de upgrades

/*
precoUP     == preço atual do upgrade
custoNivel  == multiplicador do valor por nivel

valorAlterado == Valor que o updgrade vai virar (tipo, a chance de crit ou a porcentagem ganha)
limitador == Quantidade maxima possivel para compra

multiplicador == valor do multiplicador que aumenta o valor (aumenta em 5 ou em 0.05)
*/
function comprarMaxLimitada(precoUP, custoNivel, valorAlterado, limitador, multiplicador){
	
	//Recebe a quantidade de dinheiro atual
	dinheiro = global.dinheiro
	
	//Custo total do maximo de upgrades, começa com o preço atual
	custo = precoUP
	
	//Enquanto o meu dinheiro for maior que a quantidade nescessária para aumentar
	//Continuo aumentando a quantidade de upgrades
	//Crio a variável i para representar a quantidade de upgrades feitos
	
	i = 0
	
	while dinheiro >= custo and valorAlterado < limitador{
		
		// Se o próximo valor ultrapassar o limite, para
        if (valorAlterado + multiplicador > limitador) {
            break;
        }
		
		//Se der para comprar um upgrade, i ++
		i++
		
		//Caso o próximo valor seja maior que o dinheiro disponivel, eu saio do laço de repetição
		/*if global.dinheiro < custo + custo * custoNivel{
			break
		}
		
		//Se não for menor, eu aumento o preço
		else{*/
		
		//Desconta o custo
		dinheiro -= custo
		
		//Recalcula o valor
		
		custo *= custoNivel
		
		//Atualiza o valor do upgrade
		valorAlterado += multiplicador
		
		//}
	}
	
	//Assim que sair do laço de repetição, retorna a quantidade de upgrades possiveis
	return i
	
}

function custoMaxLimitado(precoUP, custoNivel, valorAlterado, limitador, multiplicador){
	
    dinheiro    = global.dinheiro;
    custo       = precoUP;
    custoTotal  = 0;

    while (dinheiro >= custo && valorAlterado < limitador) {

        // Se o próximo upgrade passar do limite, para
        if (valorAlterado + multiplicador > limitador) {
            break;
        }

        // Soma o custo
        custoTotal += custo;

        // "Desconta" simulando
        dinheiro -= custo;

        // Recalcula preço
        custo *= custoNivel;

        // Aplica o aumento do upgrade
        valorAlterado += multiplicador;
    }

    return custoTotal;
}

function calcularNovoPreco(precoUP, multiplicador, quantidade) {
    
    var preco = precoUP;
    
    for (var i = 0; i < quantidade; i++) {
        preco *= multiplicador;
    }
    
    return preco;
}