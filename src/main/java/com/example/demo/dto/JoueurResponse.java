package com.example.demo.dto;

import java.util.ArrayList;
import java.util.List;

import com.example.demo.models.Caracteristique;
import com.example.demo.models.Partie;
import com.example.demo.models.Role;
import com.example.demo.models.Video;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;



@Data
@AllArgsConstructor
@NoArgsConstructor
public class JoueurResponse {

	
	private String nom;
	private String prenom;
	private String adresse;
	private String password;
	private String nationalite;
	private boolean disponibilite;
	private List<Partie> parties;
	private Caracteristique carateristique;
	private List<Video>videos;
	private Role Roles;
	
	/*public JoueurResponse() {
		super();
	}

	public JoueurResponse(String nom, String prenom, String adresse, String password, String nationalite,
			boolean disponibilite, List<Partie> parties, Caracteristique carateristique, List<Video> videos,
			ArrayList<Role> roles) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.password = password;
		this.nationalite = nationalite;
		this.disponibilite = disponibilite;
		this.parties = parties;
		this.carateristique = carateristique;
		this.videos = videos;
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

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNationalite() {
		return nationalite;
	}

	public void setNationalite(String nationalite) {
		this.nationalite = nationalite;
	}

	public boolean isDisponibilite() {
		return disponibilite;
	}

	public void setDisponibilite(boolean disponibilite) {
		this.disponibilite = disponibilite;
	}

	public List<Partie> getParties() {
		return parties;
	}

	public void setParties(List<Partie> parties) {
		this.parties = parties;
	}

	public Caracteristique getCarateristique() {
		return carateristique;
	}

	public void setCarateristique(Caracteristique carateristique) {
		this.carateristique = carateristique;
	}



	public List<Video> getVideos() {
		return videos;
	}



	public void setVideos(List<Video> videos) {
		this.videos = videos;
	}



	public ArrayList<Role> getRoles() {
		return Roles;
	}



	public void setRoles(ArrayList<Role> roles) {
		Roles = roles;
	}
	*/
	
}
