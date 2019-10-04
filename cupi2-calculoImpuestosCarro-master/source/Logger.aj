
public aspect Logger {
	pointcut metodosDelMundo() : call( * uniandes.cupi2.impuestosCarro.mundo..*(..));

	before(): metodosDelMundo() {

	    System.out.println("Ejectando");
	    System.out.println("\t objeto     : " + thisJoinPoint.getTarget());
	    System.out.println("\t método     : " + thisJoinPoint.getSignature());
	    System.out.println("\t argumentos : " + thisJoinPoint.getArgs());
	}
	
	after() returning(Object resultado): metodosDelMundo() {

		    System.out.println("Retornando");
		    System.out.println("\t resultado  : " + resultado);
	}
	
	after() throwing (Exception e): metodosDelMundo() {

		    System.out.println("Retornando con Excepción");
		    System.out.println("\t excepción : " + e.getMessage());
	}

}
