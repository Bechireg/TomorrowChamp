package com.example.demo.authentication;
import java.util.ArrayList;
import java.util.Optional;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.demo.models.Joueur;
import com.example.demo.models.Scout;
import com.example.demo.repositories.JoueurRepository;
import com.example.demo.repositories.ScoutRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
@Service
public class MyUserDetailsService implements UserDetailsService {
	
	private JoueurRepository repoJoueur;
	private ScoutRepository repoScout;

	@Autowired
	public MyUserDetailsService(JoueurRepository repoJoueur, ScoutRepository repoScout) {
		super();
		this.repoJoueur = repoJoueur;
		this.repoScout = repoScout;
	}

	@Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
    
		Joueur joueur=repoJoueur.findByAdresse(s); 
		Scout scout = repoScout.findByEmail(s);
		if(joueur!=null) {
			 return new User(joueur.getAdresse(), joueur.getPassword(),new ArrayList<>());
		}
		if (scout!=null) {
			return new User(scout.getEmail(), scout.getPassword(),new ArrayList<>());
		}else {
			throw new UsernameNotFoundException("wrong username and password");
		}
    }
}