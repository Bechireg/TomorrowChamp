package com.example.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.models.Caracteristique;

public interface CaracteristiqueRepository extends JpaRepository<Caracteristique, Long>{

}
