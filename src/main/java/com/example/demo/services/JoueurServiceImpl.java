package com.example.demo.services;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.JoueurRequest;
import com.example.demo.dto.JoueurResponse;
import com.example.demo.models.Joueur;
import com.example.demo.repositories.JoueurRepository;


@Service
public class JoueurServiceImpl implements JoueurService {
	
	private JoueurRepository repoJoueur;
	private ModelMapper mapper;

	@Autowired
	public JoueurServiceImpl(JoueurRepository repoJoueur,ModelMapper mapper) {
		super();
		this.repoJoueur=repoJoueur;
		this.mapper=mapper;
	}
	
	
	@Override
	public List<Joueur> getAllJoueurs() {
		// TODO Auto-generated method stub
		return repoJoueur.findAll();
	}

	@Override
	public JoueurResponse getJoueurById(long id) {

		Optional<Joueur> opt = repoJoueur.findById(id);
		Joueur entity;
		if(opt.isPresent())
			entity = opt.get();
		else
			throw new NoSuchElementException("Joueur with this id is not found");
		
		return mapper.map(entity, JoueurResponse.class);
	}

	@Override
	public JoueurResponse deleteJoueurById(long id) {
		Optional<Joueur> joueur = repoJoueur.findById(id);
		JoueurResponse res=new JoueurResponse(joueur.get().getNom(), joueur.get().getPrenom(), joueur.get().getAdresse(), joueur.get().getNationalite(), joueur.get().isDisponibilite());
		repoJoueur.deleteById(id);
		return res;

	}

	@Override
	public JoueurResponse saveOrUpdate(long id, JoueurRequest request) {
		
		JoueurResponse test = this.getJoueurById(id);
		
		if(request.getNom()!=null)
			test.setNom(request.getNom());
		if(request.getPrenom()!=null)
			test.setPrenom(request.getPrenom());
		if(request.getAdresse()!=null)
			test.setAdresse(request.getAdresse());
		if(request.getNationalite()!=null)
			test.setNationalite(request.getNationalite());
		
		
		
		Joueur newJoueur = mapper.map(test, Joueur.class);//mapper.map(test, Client.class);
		newJoueur.setId(id);
		newJoueur.setPassword(test.getPassword());
		repoJoueur.save(newJoueur);
		test.setNom(newJoueur.getNom());
		test.setPrenom(newJoueur.getPrenom());
		test.setAdresse(newJoueur.getAdresse());
		test.setNationalite(newJoueur.getNationalite());
	
		return test;
		
	
	}


	@Override
	public JoueurResponse createJoueurEntity(JoueurRequest joueur) {
	
		Joueur entity = mapper.map(joueur, Joueur.class);
		Joueur newEntity = repoJoueur.save(entity);
		JoueurResponse res=new JoueurResponse(joueur.getNom(),joueur.getPrenom(),joueur.getAdresse(),joueur.getNationalite(),joueur.isDisponibilite());
		return res;
	}
}
