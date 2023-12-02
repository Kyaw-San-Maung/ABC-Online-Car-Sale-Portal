package com.example.Onlinecarsaleportal;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Bean;

import com.example.Onlinecarsaleportal.entities.Car;
import com.example.Onlinecarsaleportal.services.CarService;

@SpringBootTest
class OnlineCarSalePortalApplicationTests {

	@Test
	void contextLoads() {
	}
	
	@Autowired
	private CarService carService;
	
	@Bean
	public CarService carService() {
		return new CarService(null);
	}
	
	@Test
	public void carSearchByModel() {
		Car car = carService.findCarByModel("2019");
		
		assertNotNull(car);
	}
	
	@Test
	public void carSearchByMake() {
		Car car = carService.findCarByMake("Myanmar");
		
		assertNotNull(car);
	}
	
	@Test
	public void carSearchByPrice() {
		Car car = carService.findCarByPrice("1100");
		
		assertNotNull(car);
	}
	
	@Test
	public void carSearchById() {
		Car car = carService.findCarById(1);
		
		assertNotNull(car);
	}
	
}
