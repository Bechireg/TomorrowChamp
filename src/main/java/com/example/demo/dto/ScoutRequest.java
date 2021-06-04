package com.example.demo.dto;

import java.util.ArrayList;
import java.util.List;

import com.example.demo.models.Joueur;
import com.example.demo.models.Role;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ScoutRequest {

		//@NotBlank(message = "Name must be not Empty")
		//@Size(max = 50, min = 3)
		//@Pattern(regexp = "[a-zA-Z ]+", message = "Name must contain only characters")
		private String nom;
		//@NotBlank(message = "Prenom must be not Empty")
		private String prenom;
		private String email;
		private String password;
		private ArrayList<Role> Roles;
		private List<Joueur> Joueurs;

		


		
		
		
		
}
