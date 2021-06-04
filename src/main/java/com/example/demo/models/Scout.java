package com.example.demo.models;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.example.demo.dto.JoueurResponse;
import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Scout {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String nom;
	private String prenom;
	private String email;
	private String password;
	@Enumerated(EnumType.STRING)
	private Role Roles;
	@JsonIgnore
	@OneToMany(mappedBy = "scout", cascade = CascadeType.REMOVE)
	private List<Joueur> JoueursRecommandé;
	
	
/*
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
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
	}*/
	


}
