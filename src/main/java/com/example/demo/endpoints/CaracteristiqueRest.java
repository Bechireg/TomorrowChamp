package com.example.demo.endpoints;

import java.util.List;
import java.util.NoSuchElementException;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dto.CaracteristiqueRequest;
import com.example.demo.dto.CaracteristiqueResponse;
import com.example.demo.models.Caracteristique;
import com.example.demo.services.CaracteristiqueService;
import com.example.demo.services.JoueurService;

@RestController
@RequestMapping("/api/carac")
public class CaracteristiqueRest {
	
	private CaracteristiqueService service;
	
	@Autowired
	public CaracteristiqueRest(CaracteristiqueService service) {
		super();
		this.service = service;
	}
	
	@GetMapping
	public List<Caracteristique> getAll(){
		return service.getAllCaracteristiques();
	}
	
	@GetMapping("/{id}")
	public CaracteristiqueResponse getCaracteristiqueById(@PathVariable("id") long id){
		return service.getCaracteristiqueById(id);
	}
	
	
	@PostMapping("/{id}")
	public CaracteristiqueResponse createCaracteristiqueEntity(@PathVariable("id") long id,@Valid @RequestBody CaracteristiqueRequest carac ){
		return service.createCaracteristiqueEntity(id,carac);
	}
	
	@PutMapping("/{id}")
	public CaracteristiqueResponse update(@PathVariable("id") long id,@Valid @RequestBody CaracteristiqueRequest carac ){
		return service.update(id,carac);
	}
	
	@ExceptionHandler(NoSuchElementException.class)
	public ResponseEntity<String> handleNoSuchElementException(NoSuchElementException e) {
		return new ResponseEntity<String>(e.getMessage(), HttpStatus.NOT_FOUND);
	}

}
