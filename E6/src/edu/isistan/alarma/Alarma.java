package edu.isistan.alarma;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import edu.isistan.alarma.hardware.Timbre;
import edu.isistan.alarma.hardware.Sensor;

public class Alarma {

	private List<Sensor> sensores;
	private Timbre timbre;
	
	public Alarma(Timbre timbre) {
		this.timbre = timbre;
		this.sensores = new ArrayList<>();
	}
	
	public boolean comprobar() {
		boolean sonar = false;
		for(Sensor s: this.sensores) {
			if (s.isDisparado()) {
				sonar = true;
				System.out.println("Sensor: "+s.getNombre()+" disparó");
			}
		}
		if (sonar) {
			this.timbre.sonar();
			return true;
		}
		return false;
	}
	
	public void agregarSensor(Sensor s) {
		this.sensores.add(s);
	}
	/**
	 *Está mal porque expone estructura interna.
	 * @return
	 */
	public List<Sensor> getSensoresMal() {
		return this.sensores;
	}
	/**
	 * Retorna una copia de la lista de sensores
	 * @return
	 CREA UN NUEVO OBJETO
	 */
	public List<Sensor> getSensoresOpcion1() {
		return new ArrayList<Sensor>(this.sensores);
	}
	

}
