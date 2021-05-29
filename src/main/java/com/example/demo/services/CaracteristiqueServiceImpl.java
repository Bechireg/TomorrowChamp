package com.example.demo.services;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.CaracteristiqueRequest;
import com.example.demo.dto.CaracteristiqueResponse;
import com.example.demo.models.Caracteristique;
import com.example.demo.models.Joueur;
import com.example.demo.repositories.CaracteristiqueRepository;
import com.example.demo.repositories.JoueurRepository;

@Service
public class CaracteristiqueServiceImpl implements CaracteristiqueService{
	
	private ModelMapper mapper;
	private CaracteristiqueRepository repoCaracteristique;
	private JoueurRepository repoJoueur;
	
	@Autowired
	public CaracteristiqueServiceImpl(ModelMapper mapper, CaracteristiqueRepository repoCaracteristique,JoueurRepository repoJoueur) {
		super();
		this.mapper = mapper;
		this.repoCaracteristique = repoCaracteristique;
		this.repoJoueur=repoJoueur;
	}

	@Override
	public List<Caracteristique> getAllCaracteristiques() {
		repoCaracteristique.findAll();
		return null;
	}

	@Override
	public CaracteristiqueResponse createCaracteristiqueEntity(long id,CaracteristiqueRequest req) {
		Caracteristique caracteristique=mapper.map(req, Caracteristique.class);
		repoCaracteristique.save(caracteristique);
		Optional<Joueur> joueur = repoJoueur.findById(id);
		Joueur entity = new Joueur();
		entity.setId(id);
		entity.setAdresse(joueur.get().getAdresse());
		entity.setDisponibilite(joueur.get().isDisponibilite());
		entity.setCaracteristique(caracteristique);
		entity.setNationalite(joueur.get().getNationalite());
		entity.setNom(joueur.get().getNom());
		entity.setPrenom(joueur.get().getPrenom());
		entity.setPassword(joueur.get().getPassword());
		repoJoueur.save(entity);
		CaracteristiqueResponse res=new CaracteristiqueResponse( req.getPosition(), req.getPiedfort(), req.getHauteur(),req.getPrecisio(),req.getPoids(), req.getPhysique(), req.getVitesse(), req.getDefense(),req.getAttaque(),req.getDribble(),req.getPass(),req.getTir());
		return res;
	}

	@Override
	public CaracteristiqueResponse getCaracteristiqueById(long id) {
		Optional<Caracteristique> opt = repoCaracteristique.findById(id);
		Caracteristique entity;
		if(opt.isPresent())
			entity = opt.get();
		else
			throw new NoSuchElementException("Caracteristique with this id is not found");
		
		return mapper.map(entity, CaracteristiqueResponse.class);
	}
}
