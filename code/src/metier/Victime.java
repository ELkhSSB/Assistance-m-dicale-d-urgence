package metier;

import java.lang.String;
import java.util.Date;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Victime
 *
 */
@Entity

public class Victime  {

	   
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int id;
	private String nomComplet;
	private String amo;
	private int age ;
	private String cin;
	private int score;
	private String time;
	private String lieu;
	private String dgreUrg;
	private String etat;
	private String type_de_soin;
	private String accompagne;

	

	public String getEtat() {
		return etat;
	}
	public void setEtat(String etat) {
		this.etat = etat;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getLieu() {
		return lieu;
	}
	public void setLieu(String lieu) {
		this.lieu = lieu;
	}
	public Victime() {
		super();
	}   
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}   
	public String getNomComplet() {
		return this.nomComplet;
	}

	public void setNomComplet(String nomComplet) {
		this.nomComplet = nomComplet;
	}   
	public String getAmo() {
		return this.amo;
	}

	public void setAmo(String amo) {
		this.amo = amo;
	}   
	public String getCin() {
		return this.cin;
	}

	public void setCin(String cin) {
		this.cin = cin;
	}   
	public String getDgreUrg() {
		return this.dgreUrg;
	}

	public void setDgreUrg(String dgreUrg) {
		this.dgreUrg = dgreUrg;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	
	public String getType_de_soin() {
		return type_de_soin;
	}
	public void setType_de_soin(String type_de_soin) {
		this.type_de_soin = type_de_soin;
	}
	public String getAccompagne() {
		return accompagne;
	}
	public void setAccompagne(String accompagne) {
		this.accompagne = accompagne;
	}
}
