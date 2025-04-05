Algoritmo BancoTransferencia
    Definir cuenta1, cuenta2 Como Entero;
    Definir saldoCuenta1, saldoCuenta2, Transferencia Como Real;
    Escribir "Ingrese el saldo inicial de la cuenta 1:";
    Leer saldoCuenta1;
    Escribir "Ingrese el saldo inicial de la cuenta 2:";
    Leer saldoCuenta2;
    Escribir "Ingrese el valor a transferir de la cuenta 1 a la cuenta 2:";
    Leer Transferencia;
    Si saldoCuenta1 < Transferencia  Entonces
        Escribir "Error: Saldo insuficiente en la cuenta 1.";
	SiNo
		saldoCuenta1 <- saldoCuenta1 - Transferencia;
		saldoCuenta2 <- saldoCuenta2 + Transferencia;
		Escribir "Transferencia realizada exitosamente.";
		Escribir "Saldo actual de la cuenta 1: ", saldoCuenta1;
		Escribir "Saldo actual de la cuenta 2: ", saldoCuenta2;
FinSi;
FinAlgoritmo