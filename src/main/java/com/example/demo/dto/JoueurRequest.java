package com.example.demo.dto;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class JoueurRequest {
	
	
	private String nom;
	private String prenom;
	private String adresse;
	private String password;
	private String nationalite;
	private boolean disponibilite;

}
