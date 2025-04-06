Algoritmo BancoPlata
	//Definimos las variables
	Definir cuenta1, cuenta2, cuentaMaster, saldoCuenta1, saldoCuenta2, saldoCuentaMaster, monto, cuentaDestino Como Entero;
	Definir opcion Como Caracter;
	//Inicializamos la variable saldoMaster
	saldoCuentaMaster <-0;
	//Inicializamos las variables saldoCuenta1 y saldoCuenta2
	Escribir "ingrese el saldo inicial de la cuenta 1: ";
	Leer saldoCuenta1;
	Escribir "ingrese el saldo inicial de la cuenta 2: ";
	Leer saldoCuenta2;
	//Menu de opciones
	Repetir
		Escribir "seleccione la opcion que desea realizar: ";
		Escribir "  1. Transferencia entre cuenta 1 y 2.";
		Escribir "  2. Ingresar plata a traves de la cuenta master.";
		Escribir "  3. Salir del menu.";
		Leer opcion;
		
		Segun opcion Hacer
			caso "1":
				Escribir "desde que cuenta desea transferir (cuenta1 o cuenta2): ";
				Leer cuentaMaster;
                Escribir "Ingrese el monto a transferir:";
                Leer monto;
				
				si cuentaMaster = (1) Entonces
					si monto <= saldoCuenta1 Entonces
						saldoCuenta1 <-saldoCuenta1 - monto;
						saldoCuenta2 <-saldoCuenta2 + monto;
						Escribir "Transferencia exitosa. Nuevo saldo Cuenta 1:", saldoCuenta1;
                        Escribir "Nuevo saldo Cuenta 2:", saldoCuenta2;
					SiNo
						Escribir " Error: saldo insuficiente en la cuenta 1.";
					FinSi
				SiNo cuentaMaster = 2;
					si monto <= saldoCuenta2 Entonces
						saldoCuenta2 <-saldoCuenta2 - monto;
						saldoCuenta1 <-saldoCuenta1 + monto;
						Escribir "Transferencia exitosa. Nuevo saldo Cuenta 2:", saldoCuenta2;
                        Escribir "Nuevo saldo Cuenta 1:", saldoCuenta1;
					SiNo
						Escribir "Error: saldo insuficiente en la cuenta 2.";
					FinSi
					
				FinSi
				
			caso "2":
				escribir "Ingrese el monto a ingresar en la Cuenta Master:";
                Leer monto;
                saldoCuentaMaster <- saldoCuentaMaster + monto;
                Escribir "Saldo actual en Cuenta Master:", saldoCuentaMaster;
				
				Escribir "A cual cuenta desea ingresar plata? (cuenta 1 o cuenta 2):";
                Leer cuentaDestino;
                Escribir "Ingrese el monto que va a transferir desde la Cuenta Master:";
                Leer monto;
				
				Si monto <= saldoCuentaMaster Entonces
                    Si cuentaDestino = (1) Entonces
                        saldoCuenta1 <- saldoCuenta1 + monto;
                        saldoCuentaMaster <- saldoCuentaMaster - monto;
                        Escribir "Ingreso exitoso. Nuevo saldo Cuenta 1:", saldoCuenta1;
				Sino cuentaDestino = (2);
                        saldoCuenta2 <- saldoCuenta2 + monto;
                        saldoCuentaMaster <- saldoCuentaMasterMaster - monto;
                        Escribir "Ingreso exitoso. Nuevo saldo Cuenta 2:", saldoCuenta2;
                    FinSi
                    Escribir "Nuevo saldo Cuenta Master:", saldoCuentaMasterMaster;
                Sino
                    Escribir "Error: saldo insuficiente en Cuenta Master.";
                FinSi
			caso "3":
				
				Escribir "Hasta luego!";
			De Otro Modo:
				Escribir "Hasta luego!";
				
			
		FinSegun
		
	Mientras Que opcion = "3"
FinAlgoritmo
