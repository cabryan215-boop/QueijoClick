//Botão atual (index para matriz e arrays)								
global.botaoAtual = 0

//vida dos botoes
global.queijo=[50000,500000]
//quantidade de dinheiro
global.dinheiro= 500000000
//ganho de dinhiro inicial de cada botao
global.ganho=[1,1.80]

//Multiplicador de dinheiro para ambos os botões
global.dinheiroGanho = 1

//dano causado no botao
global.dano=1
//mudar o spite
spr=false
//variavel que ira mudar a cghnacew de critico
global.kikupreto=1
//chnace de critico
numale=irandom_range(global.kikupreto,100)
//multiplicadores da torreta
global.ai=global.dano * 5
global.ae=global.ganho[global.botaoAtual] * 5
//qunatidade de dano que o botao tera recebido
global.danoDado = global.dano
//
global.dinheiroRecebido =0
//qunatidade de botoes destruidos 
global.quantiBotaoDestruidos=0
//nivel do player
global.NivelAtual=1
//qwuantidade de xp atual
global.Xp=0
//a quantidade de xp nessesaria 
global.xpNecessaria = 10
global.xpPreciso=[0,10]

//Xp ganho por botao
global.ganhoXP = [2, 10]



//Vida atual do botao
global.vidaAtual = [50000, 500000]

//Vida maxima quando destruir o botao
global.vidaTotal = [50000, 500000]

//Matriz dos sprites
global.botaoEscolhido = [
						[sprQueijo, sprQueijoClicando, SprqueijoClick],
						[SprBotao2, SprBotaoClicando, SprBotaoCrit]
						]



//O menor valor de botão
global.botaoMinimo = 0

//O maior valor de botão
global.botaoMaximo = 1

//Habilita o menor botao

if global.NivelAtual < global.xpPreciso[global.botaoAtual]{
	global.isHabilatado = false
}
else{
	global.isHabilatado = true
}