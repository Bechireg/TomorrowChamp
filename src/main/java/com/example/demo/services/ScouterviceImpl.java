package com.example.demo.services;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.JoueurResponse;
import com.example.demo.dto.ScoutRequest;
import com.example.demo.dto.ScoutResponse;
import com.example.demo.models.Joueur;
import com.example.demo.models.Role;
import com.example.demo.models.Scout;
import com.example.demo.repositories.JoueurRepository;
import com.example.demo.repositories.ScoutRepository;

@Service
public class ScouterviceImpl implements ScoutService {
	
	private ScoutRepository repoScout;
	private JoueurRepository repoJoueur;
	private ModelMapper mapper;
	

	@Autowired
	public ScouterviceImpl(ScoutRepository repoScout, ModelMapper mapper, JoueurRepository repoJoueur) {
		super();
		this.repoScout = repoScout;
		this.mapper = mapper;
		this.repoJoueur=repoJoueur;
	}

	@Override
	public List<Scout> getAllScouts() {
		
		return repoScout.findAll();
	}

	@Override
	public ScoutResponse createScoutEntity(ScoutRequest scout) {
		boolean trouver = false;
		for (Scout item : repoScout.findAll()) {
			if(item.getEmail().equals(scout.getEmail())) {
				trouver=true;
				break;
			}
		}
		if(trouver==false) {
			Scout entity = mapper.map(scout, Scout.class);
			entity.setRoles(Role.SCOUT);
			entity=repoScout.save(entity);
			//ScoutResponse res=new ScoutResponse(scout.getNom(),scout.getPrenom(),scout.getEmail(),scout.getPassword(),scout.getJoueurs());
			ScoutResponse scoutResponse=mapper.map(entity, ScoutResponse.class);
			return scoutResponse;
		}else {
			throw new NoSuchElementException("Scout with this email exist in DB!");
		}

	}

	@Override
	public ScoutResponse getScoutById(long id) {
		
		Optional<Scout> opt = repoScout.findById(id);
		Scout entity;
		if(opt.isPresent())
			entity = opt.get();
		else
			throw new NoSuchElementException("Scout with this id is not found");
		
		return mapper.map(entity, ScoutResponse.class);
	}

	@Override
	public ScoutResponse deleteScoutById(long id) {
		
		Optional<Scout> scout = repoScout.findById(id);
		//ScoutResponse res=new ScoutResponse(scout.get().getNom(), scout.get().getPrenom(), scout.get().getEmail(),scout.get().getPassword(), scout.get().getJoueursRecommandé());
		repoScout.deleteById(id);
		ScoutResponse res = mapper.map(scout, ScoutResponse.class);
		return res;
	}

	@Override
	public ScoutResponse saveOrUpdate(long id, ScoutRequest request) {

		ScoutResponse test = this.getScoutById(id);
		
		if(request.getNom()!=null)
			test.setNom(request.getNom());
		if(request.getPrenom()!=null)
			test.setPrenom(request.getPrenom());
		if(request.getEmail()!=null)
			test.setEmail(request.getEmail());
		if(request.getJoueurs()!=null)
			test.setJoueursRecommandé(request.getJoueurs());
		
		
		Scout newScout = mapper.map(test, Scout.class);
		newScout.setId(id);
		newScout.setPassword(test.getPassword());
		repoScout.save(newScout);
		test.setNom(newScout.getNom());
		test.setPrenom(newScout.getPrenom());
		test.setEmail(newScout.getEmail());
		test.setJoueursRecommandé(test.getJoueursRecommandé());
	
		return test;
	}

	@Override
	public List<Joueur> getListeFavoris(long id) {
		
		List<Joueur> listefavoris=new ArrayList<>();
		for (Joueur joueur : repoJoueur.findAll()) {
			if(joueur.getScout()!=null) {
				if(joueur.getScout().getId()==id)
					listefavoris.add(joueur);
			}
			
		}
		
		return listefavoris;
	}
	
	
}
