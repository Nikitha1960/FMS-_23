package com.klef.jfsd.springboot.repository;

import com.klef.jfsd.springboot.model.Buyer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BuyerRepository extends JpaRepository<Buyer, Integer> {
    Buyer findByEmail(String email);
}
