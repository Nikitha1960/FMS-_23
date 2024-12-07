package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.cart;

public interface CartService {
    void addToCart(int buyerId, int productId, int quantity);
    void removeFromCart(int cartId);
    List<cart> getcart(int buyerId);
}
