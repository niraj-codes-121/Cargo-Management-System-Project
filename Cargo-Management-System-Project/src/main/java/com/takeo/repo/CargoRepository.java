package com.takeo.repo;

import com.takeo.entity.Cargo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface CargoRepository extends JpaRepository< Cargo, Integer> {
}