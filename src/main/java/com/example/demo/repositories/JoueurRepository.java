package com.example.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.example.demo.models.Joueur;

@CrossOrigin(origins = "http://localhost:4200")
public interface JoueurRepository extends JpaRepository<Joueur, Long>{
	
	Joueur findByAdresse(String adresse);

}
