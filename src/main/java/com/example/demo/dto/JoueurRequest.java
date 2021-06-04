package com.example.demo.dto;

import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.UniqueElements;

import com.example.demo.models.Caracteristique;
import com.example.demo.models.Partie;
import com.example.demo.models.Role;
import com.example.demo.models.Video;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class JoueurRequest {
	
	//@NotBlank(message = "Name must be not Empty")
	//@Size(max = 50, min = 3)
	//@Pattern(regexp = "[a-zA-Z ]+", message = "Name must contain only characters")
	private String nom;
	//@NotBlank(message = "Prenom must be not Empty")
	private String prenom;
	
	private String adresse;
	private String password;
	//@Pattern(regexp = "[a-zA-Z ]+", message = "nationalite must contain only characters")
	private String nationalite;
	private boolean disponibilite;
	private List<Partie> parties;
	private Caracteristique caracteristique;
	private List<Video> videos;
	private Role Roles;
	
	/*public JoueurRequest() {
		super();
		
	}



	public JoueurRequest(String nom, String prenom, String adresse, String password, String nationalite,
			boolean disponibilite, List<Partie> parties, Caracteristique caracteristique, List<Video> videos) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.password = password;
		this.nationalite = nationalite;
		this.disponibilite = disponibilite;
		this.parties = parties;
		this.caracteristique = caracteristique;
		this.videos = videos;
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
	public Caracteristique getCaracteristique() {
		return caracteristique;
	}
	public void setCaracteristique(Caracteristique caracteristique) {
		this.caracteristique = caracteristique;
	}
	public List<Video> getVideos() {
		return videos;
	}
	public void setVideos(List<Video> videos) {
		this.videos = videos;
	}*/
}
