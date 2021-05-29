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
		return repoCaracteristique.findAll();
		
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

	@Override
	public CaracteristiqueResponse update(long id,CaracteristiqueRequest req) {
		Optional<Joueur> joueur = repoJoueur.findById(id);
		if(joueur.get().getCaracteristique()!=null) {
			Optional<Caracteristique> caraOptional=repoCaracteristique.findById(joueur.get().getCaracteristique().getId());
			Caracteristique carac = new Caracteristique();
			carac.setId(caraOptional.get().getId());
			if(req.getAttaque()!=0)
				carac.setAttaque(req.getAttaque());
			else
				carac.setAttaque(caraOptional.get().getAttaque());
			
			if(req.getDefense()!=0)
				carac.setDefense(req.getDefense());
			else
				carac.setDefense(caraOptional.get().getDefense());
			
			if(req.getDribble()!=0)
				carac.setDribble(req.getDribble());
			else
				carac.setDribble(caraOptional.get().getDribble());
			
			if(req.getHauteur()!=0)
				carac.setHauteur(req.getHauteur());
			else
				carac.setHauteur(caraOptional.get().getHauteur());
			
			if(req.getPass()!=0)
				carac.setPass(req.getPass());
			else
				carac.setPass(caraOptional.get().getPass());
			
			if(req.getPhysique()!=0)
				carac.setPhysique(req.getPhysique());
			else
				carac.setPhysique(caraOptional.get().getPhysique());
			
			if(req.getPiedfort()!=null)
				carac.setPiedfort(req.getPiedfort());
			else
				carac.setPiedfort(caraOptional.get().getPiedfort());
			
			if(req.getPoids()!=0)
				carac.setPoids(req.getPoids());
			else
				carac.setPoids(caraOptional.get().getPoids());
			
			if(req.getPosition()!=null)
				carac.setPosition(req.getPosition());
			else
				carac.setPosition(caraOptional.get().getPosition());
			
			if(req.getPrecisio()!=null)
				carac.setPrecisio(req.getPrecisio());
			else
				carac.setPrecisio(caraOptional.get().getPrecisio());
			
			if(req.getTir()!=0)
				carac.setTir(req.getTir());
			else
				carac.setTir(caraOptional.get().getTir());
			
			if(req.getVitesse()!=0)
				carac.setVitesse(req.getVitesse());
			else
				carac.setVitesse(caraOptional.get().getVitesse());

			repoCaracteristique.save(carac);
			return mapper.map(carac, CaracteristiqueResponse.class);
		}
		
		return null;
		
	}
}
