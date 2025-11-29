package metier;

import java.lang.String;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: File_ambulance
 *
 */
@Entity

public class File_ambulance  {

	   
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	
	 @Column(name = "victim_id", nullable = false)
	    private int victimId;
	 
	 @Column(name = "ambulance_id")
	    private int ambulanceId;

	
	private String date;
	private String etat;
	

	public File_ambulance() {
		super();
	}   
	public long getId() {
		return this.id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	
	
  
	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}   
	public String getEtat() {
		return this.etat;
	}

	public void setEtat(String etat) {
		this.etat = etat;
	}
//	public Victime getVictim() {
//		return victim;
//	}
//	public void setVictim(Victime victim) {
//		this.victim = victim;
//	}
//	public Ambulance getAmbulance() {
//		return ambulance;
//	}
//	public void setAmbulance(Ambulance ambulance) {
//		this.ambulance = ambulance;
//	}
//	public void setId(Long id) {
//		this.id = id;
//	}
	public int getVictimId() {
		return victimId;
	}
	public void setVictimId(int victimId) {
		this.victimId = victimId;
	}
	public int getAmbulanceId() {
		return ambulanceId;
	}
	public void setAmbulanceId(int ambulanceId) {
		this.ambulanceId = ambulanceId;
	}

	
	
	
   
}
