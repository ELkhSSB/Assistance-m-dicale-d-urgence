package metier;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Ambulance
 *
 */
@Entity

public class Ambulance implements Serializable {

	   
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
//	private String matricule;
	private String Marque;
	private String matricule;
	private String Chofeur;
	private String etat;
	private static final long serialVersionUID = 1L;

	public Ambulance() {
		super();
	}   
	public String getMatricule() {
		return this.matricule;
	}

	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}  
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	} 
	public String getMarque() {
		return this.Marque;
	}

	public void setMarque(String Marque) {
		this.Marque = Marque;
	}   
	public String getChofeur() {
		return this.Chofeur;
	}

	public void setChofeur(String Chofeur) {
		this.Chofeur = Chofeur;
	}   
	public String getEtat() {
		return this.etat;
	}

	public void setEtat(String etat) {
		this.etat = etat;
	}
   
}
