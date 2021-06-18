//Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La 
//función debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso 
//	de la función Subcadena(). 


Algoritmo funcion4
	
	Definir str_frase,str_letra Como Caracter
	Definir var_long, var_resultado Como Entero
	
	var_long = 0
	
	Escribir "[ 1 ] - Ingrese una palabra o frase "; Leer str_frase
	
	
	Repetir
		
		Escribir "[ 2 ] - Escriba una letra a detectar en lo escrito anteriormente"; Leer str_letra
		
		var_long = Longitud(str_letra);
		Si var_long <> 1 Entonces Escribir "[ ERROR ] Solo ingrese 1 letra"; FinSi
		
	Hasta Que  var_long = 1
	
	var_resultado = EncontrarLetra( str_frase, str_letra )
	Si  var_resultado > 0
		Escribir "[ ! ] Resultado: La letra/caracter se encontró ", var_resultado, " veces en la frase o palabra"
		
		Sino Escribir "[ ! ] No se encontró la letra/caracter en la frase o palabra"
	FinSi
	
	
FinAlgoritmo


Funcion resultado <- EncontrarLetra( msg, letra )
	
	Definir resultado, i Como Entero
	Definir str_caracter Como Caracter
	
	resultado = 0;
	
	Para i = 0 hasta Longitud(msg)
		
		str_caracter = Subcadena( msg,i,i )
		
		Si str_caracter = letra
			resultado = resultado + 1
		FinSi

	FinPara
	
	
FinFuncion
	
