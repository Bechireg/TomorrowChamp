package com.example.demo.dto;

import java.util.ArrayList;
import java.util.List;

import com.example.demo.models.Joueur;
import com.example.demo.models.Role;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ScoutResponse {

	private String nom;
	private String prenom;
	private String email;
	private String password;
	private List<Joueur> JoueursRecommandé;
	private ArrayList<Role> Roles;
	
	
	/*public ScoutResponse() {
		super();
	}

	public ScoutResponse(String nom, String prenom, String email, String password, List<Joueur> joueursRecommandé,
			ArrayList<Role> roles) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.password = password;
		JoueursRecommandé = joueursRecommandé;
		Roles = roles;
	}

	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getPrenom() {
		return prenom;
	}


	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public List<Joueur> getJoueursRecommandé() {
		return JoueursRecommandé;
	}


	public void setJoueursRecommandé(List<Joueur> joueursRecommandé) {
		JoueursRecommandé = joueursRecommandé;
	}


	public ArrayList<Role> getRoles() {
		return Roles;
	}


	public void setRoles(ArrayList<Role> roles) {
		Roles = roles;
	}
*/
	
	
}
