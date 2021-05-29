package com.example.demo.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.dto.CaracteristiqueRequest;
import com.example.demo.dto.CaracteristiqueResponse;
import com.example.demo.models.Caracteristique;


public interface CaracteristiqueService {
	
	List<Caracteristique> getAllCaracteristiques();
	CaracteristiqueResponse createCaracteristiqueEntity(long id,CaracteristiqueRequest carac);
	CaracteristiqueResponse getCaracteristiqueById(long id);

}
