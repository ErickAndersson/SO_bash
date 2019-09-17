package edu.isistan.alarma;

import edu.isistan.alarma.hardware.Luz;
import edu.isistan.alarma.hardware.Timbre;

public class AlarmaLuminosa extends Alarma {
	private Luz luz;
	
	public AlarmaLuminosa(Timbre t, Luz l) {
		super(t);
		this.luz = l;
	}
	
	@Override
	public boolean comprobar() {
		if (super.comprobar()) {
			this.luz.prender();
			return true;
		}
		return false;
	}

}
