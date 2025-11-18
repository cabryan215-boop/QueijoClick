function arredondarNum(num){
	
	numArredondado = ""
	if num<=1000{
		numArredondado=string(num)
	}
	if num >= 1000{
		numArredondado = string( round((num / 1000) * 10) / 10 ) + "k"
	}
	if num >= 1000000{
		numArredondado = string( round((num / 1000000) * 10) / 10 ) + "mi"
	}
	if num >= 1000000000{
		numArredondado = string( round((num / 1000000000) * 10) / 10 ) + "bi"
	}
	if num >= 1000000000000{
		numArredondado = string( round((num / 1000000000000) * 10) / 10 ) + "tri"
	}
	if num >= 1000000000000000{
		numArredondado = string( round((num / 1000000000000000) * 10) / 10 ) + "qd"
	}
	if num >= 1000000000000000000{
		numArredondado = string( round((num / 1000000000000000000) * 10) / 10 ) + "qint"
	}
	if num >= 1000000000000000000000{
		numArredondado = string( round((num / 1000000000000000000000) * 10) / 10 ) + "sexqt"
	}
	
	
	
	return numArredondado
}