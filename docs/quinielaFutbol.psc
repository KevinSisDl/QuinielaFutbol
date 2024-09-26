Algoritmo quinielaFutbol
    Definir enfrentamientos Como Caracter;
    Definir resultados Como Caracter;
    Definir nombresEquipos Como Caracter;
    Definir equipo1, equipo2 Como Caracter;
    Definir resultado Como Caracter;
    Definir x, z, identificadorX, identificadorZ Como Entero;
	
    Dimension enfrentamientos[10,10];
    Dimension resultados[10,10];
    Dimension nombresEquipos[10];
	
    // Inicializar matrices
    Para x <- 0 Hasta 9
        Para z <- 0 Hasta 9
            enfrentamientos[x,z] <- " ";
            resultados[x,z] <- "";
        FinPara
    FinPara
	
    // Solicitar nombres de equipos
    Para x <- 0 Hasta 9
        Escribir "Ingrese el nombre del Equipo ", x + 1, ":";
        Leer nombresEquipos[x];
    FinPara
	
    // Solicitar resultados de partidos
    Para x <- 0 Hasta 4
        Escribir "Ingrese el nombre del Equipo 1 del partido ", x + 1, ":";
        Leer equipo1;
		
        Escribir "Ingrese el nombre del Equipo 2 del partido ", x + 1, ":";
        Leer equipo2;
		
		identificadorX <- -1;
        identificadorZ <- -1;
        // Validar equipos
        Para z <- 0 Hasta 9
            Si nombresEquipos[z] = equipo1 Entonces
                identificadorX <- z;
            FinSi
            Si nombresEquipos[z] = equipo2 Entonces
                identificadorZ <- z;
            FinSi
        FinPara
		
        // Verificar si los equipos fueron encontrados
        Si identificadorX = -1 O identificadorZ = -1 Entonces
            Escribir "Error: Uno de los equipos no fue encontrado. Intente nuevamente.";
            x <- x - 1;
        Sino
            // Ingresar resultado solo si ambos equipos son válidos
            Escribir "Ingrese el resultado del partido (x-y):";
            Leer resultado;
			
            // Actualizar matrices
            enfrentamientos[identificadorX, identificadorZ] <- "x";
            resultados[identificadorX, identificadorZ] <- resultado;
            enfrentamientos[identificadorZ, identificadorX] <- "x";
            resultados[identificadorZ, identificadorX] <- resultado;
        FinSi
    FinPara
	
    // Mostrar tabla de enfrentamientos
    Escribir "-------------------------------------------------------------------";
    Escribir "                         ENFRENTAMIENTOS               ";
    Escribir "-------------------------------------------------------------------";
    Escribir "Enfrentamientos | ", nombresEquipos[0], " | ", nombresEquipos[1], " | ", nombresEquipos[2], " | ", nombresEquipos[3], " | ", nombresEquipos[4], " | ", nombresEquipos[5], " | ", nombresEquipos[6], " | ", nombresEquipos[7], " | ", nombresEquipos[8], " | ", nombresEquipos[9], " | ";
    Escribir "-------------------------------------------------------------------";
    Para x <- 0 Hasta 9
        Escribir nombresEquipos[x], " | ", enfrentamientos[x,0], " | ", enfrentamientos[x,1], " | ", enfrentamientos[x,2], " | ", enfrentamientos[x,3], " | ", enfrentamientos[x,4], " | ", enfrentamientos[x,5], " | ", enfrentamientos[x,6], " | ", enfrentamientos[x,7], " | ", enfrentamientos[x,8], " | ", enfrentamientos[x,9], " | ";
    FinPara
    Escribir "-------------------------------------------------------------------";
	
    // Mostrar tabla de resultados
    Escribir "-------------------------------------------------------------------";
    Escribir "                         RESULTADOS               ";
    Escribir "-------------------------------------------------------------------";
    Escribir "Resultados      | ", nombresEquipos[0], " | ", nombresEquipos[1], " | ", nombresEquipos[2], " | ", nombresEquipos[3], " | ", nombresEquipos[4], " | ", nombresEquipos[5], " | ", nombresEquipos[6], " | ", nombresEquipos[7], " | ", nombresEquipos[8], " | ", nombresEquipos[9], " | ";
    Escribir "-------------------------------------------------------------------";
    Para x <- 0 Hasta 9
        Escribir nombresEquipos[x], " | ", resultados[x,0], " | ", resultados[x,1], " | ", resultados[x,2], " | ", resultados[x,3], " | ", resultados[x,4], " | ", resultados[x,5], " | ", resultados[x,6], " | ", resultados[x,7], " | ", resultados[x,8], " | ", resultados[x,9], " | ";
    FinPara
    Escribir "-------------------------------------------------------------------";
FinAlgoritmo
