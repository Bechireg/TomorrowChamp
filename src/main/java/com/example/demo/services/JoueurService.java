package com.example.demo.services;

import java.util.List;

import com.example.demo.dto.JoueurRequest;
import com.example.demo.dto.JoueurResponse;
import com.example.demo.models.Joueur;

public interface JoueurService {
	List<Joueur> getAllJoueurs();
	JoueurResponse createJoueurEntity(JoueurRequest joueur);
	Joueur getJoueurById(long id);
	void deleteJoueurById(long id);
	void saveOrUpdate(Joueur joueur);

}
