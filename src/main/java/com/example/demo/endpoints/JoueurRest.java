package com.example.demo.endpoints;

import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.models.Joueur;
import com.example.demo.services.JoueurService;

@RestController
@RequestMapping("/api/joueurs")
public class JoueurRest {
	
	private JoueurService service;
	
	
	@Autowired
	public JoueurRest(JoueurService service) {
		super();
		this.service = service;
	}
	
	@GetMapping
	public List<Joueur> getAll(){
		return service.getAllJoueurs();
	}
	
	
	
	@ExceptionHandler(NoSuchElementException.class)
	public ResponseEntity<String> handleNoSuchElementException(NoSuchElementException e) {
		return new ResponseEntity<String>(e.getMessage(), HttpStatus.NOT_FOUND);
	}

}
