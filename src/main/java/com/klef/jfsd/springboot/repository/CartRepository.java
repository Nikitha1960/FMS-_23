package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.cart;

@Repository
public interface CartRepository extends JpaRepository<cart, Integer> {
    List<cart> findByBuyerId(int buyerId);
    cart findByBuyerIdAndProductId(int buyerId, int productId);
}

