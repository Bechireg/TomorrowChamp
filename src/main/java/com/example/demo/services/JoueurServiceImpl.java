package com.example.demo.services;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.JoueurRequest;
import com.example.demo.dto.JoueurResponse;
import com.example.demo.models.Joueur;
import com.example.demo.models.Partie;
import com.example.demo.models.Scout;
import com.example.demo.repositories.JoueurRepository;
import com.example.demo.repositories.PartieRepository;
import com.example.demo.repositories.ScoutRepository;


@Service
public class JoueurServiceImpl implements JoueurService {
	
	private JoueurRepository repoJoueur;
	private ScoutRepository repoScout;
	private PartieRepository repoPartie;
	private ModelMapper mapper;

	@Autowired
	public JoueurServiceImpl(JoueurRepository repoJoueur,ModelMapper mapper,ScoutRepository repoScout,PartieRepository repoPartie) {
		super();
		this.repoJoueur=repoJoueur;
		this.repoScout=repoScout;
		this.repoPartie=repoPartie;
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
		JoueurResponse res=new JoueurResponse(joueur.get().getNom(),joueur.get().getPrenom(), joueur.get().getAdresse(),joueur.get().getPassword(),joueur.get().getNationalite(),joueur.get().isDisponibilite(),joueur.get().getParties(),joueur.get().getCaracteristique());
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
	public String setScoutInJoueur(long idJoueur, long idScout) {
		Optional<Joueur> joueur=repoJoueur.findById(idJoueur);
		if(joueur.get().isDisponibilite()) {
		Optional<Scout> scout=repoScout.findById(idScout);
		Scout newScout=mapper.map(scout, Scout.class);
		
		newScout.setId(idScout);
		newScout.setEmail(scout.get().getEmail());
		newScout.setNom(scout.get().getNom());
		newScout.setPrenom(scout.get().getPrenom());
		newScout.setPassword(scout.get().getPassword());
		
		Joueur newJoueur = mapper.map(joueur, Joueur.class);
		newJoueur.setId(idJoueur);
		newJoueur.setAdresse(joueur.get().getAdresse());
		newJoueur.setDisponibilite(false);
		newJoueur.setCaracteristique(joueur.get().getCaracteristique());
		newJoueur.setNationalite(joueur.get().getNationalite());
		newJoueur.setNom(joueur.get().getNom());
		newJoueur.setPrenom(joueur.get().getPrenom());
		newJoueur.setPassword(joueur.get().getPassword());
		newJoueur.setScout(newScout);
		repoJoueur.save(newJoueur);
		
		return "Joueur ajouter avec succes!";
		
		}else {
			return "Joueur indisponible !";
		}
	}


	@Override
	public JoueurResponse createJoueurEntity(JoueurRequest joueur) {
	
		Joueur entity = mapper.map(joueur, Joueur.class);
		Joueur newEntity = repoJoueur.save(entity);
		JoueurResponse res=new JoueurResponse(joueur.getNom(),joueur.getPrenom(),joueur.getAdresse(),joueur.getPassword(),joueur.getNationalite(), joueur.isDisponibilite(), joueur.getParties(), joueur.getCaracteristique());
		return res;
	}


	@Override
	public JoueurResponse setJoueursInParties(long idJoueur , long id) {
		//mappage de joueur
		Optional<Joueur> joueur = repoJoueur.findById(idJoueur);
		Joueur entity = new Joueur();
		entity.setId(idJoueur);
		entity.setAdresse(joueur.get().getAdresse());
		entity.setDisponibilite(joueur.get().isDisponibilite());
		entity.setCaracteristique(joueur.get().getCaracteristique());
		entity.setNationalite(joueur.get().getNationalite());
		entity.setNom(joueur.get().getNom());
		entity.setPrenom(joueur.get().getPrenom());
		entity.setPassword(joueur.get().getPassword());
		//mappage de partie
		Optional<Partie> p=repoPartie.findById(id);
		Partie partie = new Partie();
		partie.setId(id);
		partie.setJoueurs(p.get().getJoueurs());
		partie.setStade(p.get().getStade());

		if(entity.getParties()==null) {
			List<Partie> ListPartie = new ArrayList<>();
			ListPartie.add(partie);
			entity.setParties(ListPartie);
		}else {
			entity.getParties().add(partie);
		}
		if(partie.getJoueurs()==null) {
			List<Joueur> ListJoueur = new ArrayList<>();
			ListJoueur.add(entity);
			partie.setJoueurs(ListJoueur);
		}else {
			partie.getJoueurs().add(entity);
		}

		repoJoueur.save(entity);
		repoPartie.save(partie);
		
		return mapper.map(entity, JoueurResponse.class);
	}


	@Override
	public JoueurResponse deleteScoutfromJoueur(long idJoueur, long idScout) {
		Optional<Joueur> j = repoJoueur.findById(idJoueur);
		Joueur joueur=new Joueur();
		if(j.get().getScout().getId()==idScout) {
			joueur.setId(idJoueur);
			joueur.setAdresse(j.get().getAdresse());
			
			joueur.setCaracteristique(j.get().getCaracteristique());
			joueur.setNationalite(j.get().getNationalite());
			joueur.setNom(j.get().getNom());
			joueur.setPrenom(j.get().getPrenom());
			
			joueur.setScout(null);
			joueur.setDisponibilite(true);
		}
		repoJoueur.save(joueur);
		return mapper.map(joueur, JoueurResponse.class);
	}
	
	
	
	
}
