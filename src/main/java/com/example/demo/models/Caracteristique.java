package com.example.demo.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
public class Caracteristique {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String position;
	private String piedfort;
	private String precisio;
	private int hauteur;
	private double poids;
	private int physique;
	private int vitesse;
	private int defense;
	private int attaque;
	private int dribble;
	private int pass;
	private int tir;
	
	
	@JsonIgnore
	@OneToOne(mappedBy ="caracteristique")
	private Joueur joueur;


	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}


	public String getPiedfort() {
		return piedfort;
	}


	public void setPiedfort(String piedfort) {
		this.piedfort = piedfort;
	}


	public int getHauteur() {
		return hauteur;
	}


	public void setHauteur(int hauteur) {
		this.hauteur = hauteur;
	}


	public double getPoids() {
		return poids;
	}


	public void setPoids(double poids) {
		this.poids = poids;
	}


	public int getPhysique() {
		return physique;
	}


	public void setPhysique(int physique) {
		this.physique = physique;
	}


	public int getVitesse() {
		return vitesse;
	}


	public void setVitesse(int vitesse) {
		this.vitesse = vitesse;
	}


	public int getDefense() {
		return defense;
	}


	public void setDefense(int defense) {
		this.defense = defense;
	}


	public int getAttaque() {
		return attaque;
	}


	public void setAttaque(int attaque) {
		this.attaque = attaque;
	}


	public int getDribble() {
		return dribble;
	}


	public void setDribble(int dribble) {
		this.dribble = dribble;
	}


	public int getPass() {
		return pass;
	}


	public void setPass(int pass) {
		this.pass = pass;
	}


	public int getTir() {
		return tir;
	}


	public void setTir(int tir) {
		this.tir = tir;
	}


	public Joueur getJoueur() {
		return joueur;
	}


	public void setJoueur(Joueur joueur) {
		this.joueur = joueur;
	}


	public String getPrecisio() {
		return precisio;
	}


	public void setPrecisio(String precisio) {
		this.precisio = precisio;
	}
	
	
	
	
	
}
