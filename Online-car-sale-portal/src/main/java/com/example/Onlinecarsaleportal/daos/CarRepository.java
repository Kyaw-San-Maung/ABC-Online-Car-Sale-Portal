package com.example.Onlinecarsaleportal.daos;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.Onlinecarsaleportal.entities.Car;

import java.util.List;
import java.util.Optional;

@Repository
public interface CarRepository extends JpaRepository<Car, Long> {
	
    
    @Query(value = "SELECT c FROM Car c WHERE c.make LIKE '%' || :keyword || '%'"
			+ " OR c.model LIKE '%' || :keyword || '%'"
			+ " OR c.price LIKE '%' || :keyword || '%'")
	public List<Car> search(@Param("keyword") String keyword);
    
    //Junit testing
    Car findByModel (String model);
    Car findByMake (String make);
    Car findByPrice (String price);
    Car findById (long id);
}
