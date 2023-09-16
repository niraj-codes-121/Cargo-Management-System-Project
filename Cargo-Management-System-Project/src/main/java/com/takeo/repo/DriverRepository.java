package com.takeo.repo;

import com.takeo.entity.Driver; // Change Cargo to Driver
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DriverRepository extends JpaRepository<Driver, Integer> { // Change Cargo to Driver and Cargo to Driver
}
