package com.example.demo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Getter
public class CaracteristiqueResponse {
	

	private String position;
	private String piedfort;
	private int hauteur;
	private String precisio;
	private double poids;
	private int physique;
	private int vitesse;
	private int defense;
	private int attaque;
	private int dribble;
	private int pass;
	private int tir;
	
	public CaracteristiqueResponse() {
		super();
	}

	
	
	public CaracteristiqueResponse(String position, String piedfort, int hauteur, String precisio, double poids,
			int physique, int vitesse, int defense, int attaque, int dribble, int pass, int tir) {
		super();
		this.position = position;
		this.piedfort = piedfort;
		this.hauteur = hauteur;
		this.precisio = precisio;
		this.poids = poids;
		this.physique = physique;
		this.vitesse = vitesse;
		this.defense = defense;
		this.attaque = attaque;
		this.dribble = dribble;
		this.pass = pass;
		this.tir = tir;
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



	public String getPrecisio() {
		return precisio;
	}



	public void setPrecisio(String precisio) {
		this.precisio = precisio;
	}
	

}
