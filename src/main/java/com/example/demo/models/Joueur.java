package com.example.demo.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import lombok.Data;

@Entity
@Data
public class Joueur {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String nom;
	private String prenom;
	private String adresse;
	private String email;
	private String nationalite;
	private boolean disponibilite;
	
	@OneToOne(mappedBy ="joueur")
	private Caracteristique caracteristique;
	
	@OneToMany(mappedBy = "joueur", cascade = CascadeType.REMOVE)
	private List<Video> videos;
	
	@ManyToMany(mappedBy = "joueurs", cascade = CascadeType.REMOVE)
	private List<Match> matches;

	
}
