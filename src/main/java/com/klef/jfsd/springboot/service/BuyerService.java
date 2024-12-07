package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Buyer;
import com.klef.jfsd.springboot.repository.BuyerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BuyerService {
    @Autowired
    private BuyerRepository buyerRepository;

    public void registerBuyer(Buyer buyer) {
        if (buyerRepository.findByEmail(buyer.getEmail()) != null) {
            throw new RuntimeException("Email already exists!");
        }
        buyerRepository.save(buyer);
    }

    public Buyer authenticateBuyer(String email, String password) {
        Buyer buyer = buyerRepository.findByEmail(email);
        if (buyer != null && buyer.getPassword().equals(password)) {
            return buyer;
        }
        return null;
    }
}
