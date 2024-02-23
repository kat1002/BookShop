/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.cart;

import com.model.item.Item;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kat1002
 */
public class Cart {
    List<Item> items = new ArrayList<>();

    public Cart() {
    }
    
    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    
    public void addItem(Item i){
        for(int j = 0; j < items.size(); ++j){
            if(i.getBook() == items.get(j).getBook()){
                items.get(j).setAmount(items.get(j).getAmount() + i.getAmount());
                return;
            }
        }
        
        items.add(i);
    }
    
    public void removeItem(Item i){
        items.remove(i);
    }
    
    
}
