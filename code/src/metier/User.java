package metier;


import javax.persistence.*;

/**
 * Entity implementation class for Entity: User
 *
 */
@Entity
@Table(name="user1")
public class User {

	   
	@Id
	@Column(length = 34)
	private String num_Amo;
	@Column(length = 34)
	private String nom;
	@Column(length = 34)
	private String prenom;
	@Column(length = 12)
	private String cin;
	@Column(length = 15)
	private String tele;
	

	public User() {
		super();
	}   
	public User(String num_Amo, String nom, String prenom, String cin) {
		super();
		this.num_Amo = num_Amo;
		this.nom = nom;
		this.prenom = prenom;
		this.cin = cin;
	}
	public String getNum_Amo() {
		return this.num_Amo;
	}

	public void setNum_Amo(String num_Amo) {
		this.num_Amo = num_Amo;
	}   
	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}   
	public String getPrenom() {
		return this.prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}   
	public String getCin() {
		return this.cin;
	}

	public void setCin(String cin) {
		this.cin = cin;
	}
	public String getTele() {
		return tele;
	}
	public void setTele(String tele) {
		this.tele = tele;
	}
   
}
