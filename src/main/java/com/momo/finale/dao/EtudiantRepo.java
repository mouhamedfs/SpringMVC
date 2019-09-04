package com.momo.finale.dao;

import com.momo.finale.model.Etudiant;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EtudiantRepo extends JpaRepository<Etudiant,Integer> {
}
