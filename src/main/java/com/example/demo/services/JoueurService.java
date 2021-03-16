package com.example.demo.services;

import java.util.List;

import com.example.demo.models.Joueur;

public interface JoueurService {
	List<Joueur> getAllJoueurs();
	Joueur getJoueurById(long id);
	void deleteJoueurById(long id);
	void saveOrUpdate(Joueur joueur);

}
