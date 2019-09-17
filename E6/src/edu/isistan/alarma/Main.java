package edu.isistan.alarma;

import edu.isistan.alarma.hardware.Luz;
import edu.isistan.alarma.hardware.Sensor;
import edu.isistan.alarma.hardware.Timbre;

public class Main {

	public static void main(String[] args) {
		Timbre  t = new Timbre();
		Sensor s1 = new Sensor("Puerta");
		Sensor s2 = new Sensor("Ventana");
		Luz l = new Luz();
		Alarma a = new AlarmaLuminosa(t, l);
		a.agregarSensor(s1);
		a.agregarSensor(s2);
		s1.setDisparado(true);
		s2.setDisparado(true);
		System.out.println(a.comprobar());
	}

}
