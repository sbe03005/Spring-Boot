package net.skhu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import net.skhu.entity.District;

@Repository
public interface DistrictRepository extends JpaRepository<District, Integer>  {
	
}
