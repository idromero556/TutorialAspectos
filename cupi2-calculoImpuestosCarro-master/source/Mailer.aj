
public aspect Mailer {
	pointcut metodoQueCalculaImpuesto() : call ( * uniandes.cupi2.impuestosCarro.mundo.CalculadorImpuestos.calcularPago(..));

	  after() returning(Object resultado): metodoQueCalculaImpuesto() {
          
		    System.out.println("Valor del Impuesto " + resultado);
		    Double valorImpuesto = (Double) resultado;
		                
		    if (valorImpuesto > 2000000) {
		      System.out.println("Enviando correo !!");
		    }                
		  }

}
