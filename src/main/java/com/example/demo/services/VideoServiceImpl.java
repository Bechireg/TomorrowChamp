package com.example.demo.services;

import java.util.Optional;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.VideoRequest;
import com.example.demo.dto.VideoResponse;
import com.example.demo.models.Joueur;
import com.example.demo.models.Video;
import com.example.demo.repositories.JoueurRepository;
import com.example.demo.repositories.VideoRepository;
@Service
public class VideoServiceImpl implements VideoService{

	private VideoRepository repoVideo;
	private ModelMapper mapper;
	private JoueurRepository repoJoueur;
	@Autowired
	public VideoServiceImpl(VideoRepository repoVideo,ModelMapper mapper,JoueurRepository repoJoueur) {
		super();
		this.repoVideo = repoVideo;
		this.mapper=mapper;
		this.repoJoueur=repoJoueur;
	}

	@Override
	public VideoResponse AddVideo(VideoRequest request, long idJoueur) {
		Video video = mapper.map(request, Video.class);
		Optional<Joueur> joueur = repoJoueur.findById(idJoueur);
		
		Joueur newJoueur =mapper.map(joueur, Joueur.class);
		newJoueur.setId(idJoueur);
		
		video=repoVideo.save(video);
		newJoueur.setAdresse(joueur.get().getAdresse());
		newJoueur.setDisponibilite(joueur.get().isDisponibilite());
		newJoueur.setCaracteristique(joueur.get().getCaracteristique());
		newJoueur.setNationalite(joueur.get().getNationalite());
		newJoueur.setNom(joueur.get().getNom());
		newJoueur.setPrenom(joueur.get().getPrenom());
		newJoueur.setPassword(joueur.get().getPassword());
		newJoueur.setScout(joueur.get().getScout());
		newJoueur.setParties(joueur.get().getParties());
		newJoueur.setRoles(joueur.get().getRoles());
		video.setJoueur(newJoueur);
		
		repoVideo.save(video);
		return mapper.map(video, VideoResponse.class);
	}

	@Override
	public String DeleteVideo(long idVideo) {
		repoVideo.deleteById(idVideo);
		return "Video deleted ! "; 
	}   

}
