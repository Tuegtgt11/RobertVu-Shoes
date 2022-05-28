package com.t2010a.javashopping.entity.cart;

import com.t2010a.javashopping.entity.Product;

import java.util.ArrayList;

public interface ShoppingCartAction {
    void add(Product product, int qty);
    void update(Product product,int qty);
    void remove(Product product);
    ArrayList<CartItem> getListItems();
}
