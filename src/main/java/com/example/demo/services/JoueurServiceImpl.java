package com.example.demo.services;

import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.Joueur;
import com.example.demo.repositories.JoueurRepository;

@Service
public class JoueurServiceImpl implements JoueurService {
	
	private JoueurRepository repoJoueur;

	@Autowired
	public JoueurServiceImpl(JoueurRepository repoJoueur) {
		this.repoJoueur=repoJoueur;
	}
	
	
	@Override
	public List<Joueur> getAllJoueurs() {
		// TODO Auto-generated method stub
		return repoJoueur.findAll();
	}

	@Override
	public Joueur getJoueurById(long id) {
		// TODO Auto-generated method stub
		return repoJoueur.findById(id).orElseThrow(()->new NoSuchElementException());
	}

	@Override
	public void deleteJoueurById(long id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void saveOrUpdate(Joueur joueur) {
		// TODO Auto-generated method stub

	}

}
