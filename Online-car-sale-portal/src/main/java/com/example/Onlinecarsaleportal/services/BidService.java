package com.example.Onlinecarsaleportal.services;

import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.Onlinecarsaleportal.daos.BidRepository;
import com.example.Onlinecarsaleportal.entities.Car;
import com.example.Onlinecarsaleportal.entities.CarBidding;


@Service
@Transactional
public class BidService {
	@Autowired
	BidRepository repo;

	@Autowired
    private BidRepository bidRepository;

	public CarBidding save(CarBidding carBiding) {		
        return repo.save(carBiding);	
	}

	public List<CarBidding> listAll() {
		return (List<CarBidding>) repo.findAll();
	}

	public List<CarBidding> listBidInfo(Car car) {
		return (List<CarBidding>) repo.findByCarid(car);
	}

}
