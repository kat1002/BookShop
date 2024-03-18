/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.cart;

import com.controller.WebManager;
import com.model.item.Item;
import com.model.item.ItemDAO;
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
        return WebManager.getInstance().itemDAO.getAll();
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    
    public void addItem(Item i){
        items = getItems();
        ItemDAO itemDAO = WebManager.getInstance().itemDAO;
        
        System.out.println("CART: " + items);
        
        for(int j = 0; j < items.size(); ++j){
            if(i.getBook().getId() == items.get(j).getBook().getId()){
                Item item = items.get(j);
                items.get(j).setAmount(items.get(j).getAmount() + i.getAmount());
                
                String[] params = new String[3];
                itemDAO.update(items.get(j), params);
                return;
            }
        }
        
        System.out.println("Insert: " + i.getBook().getTitle() + "|" + i.getAmount() + " into cart");
        
        items.add(i);
        itemDAO.insert(i);
    }
    
    public void decreaseItem(Item i){
        
        items = getItems();
        ItemDAO itemDAO = WebManager.getInstance().itemDAO;
        
        for(int j = 0; j < items.size(); ++j){
            if(i.getBook().getId() == items.get(j).getBook().getId()){
                items.get(j).setAmount(items.get(j).getAmount() - i.getAmount());
                
                String[] params = new String[3];
                itemDAO.update(items.get(j), params);
                if(items.get(j).getAmount() <= 0) itemDAO.delete(items.get(j));
                return;
            }
        }
    }
    
    public void removeItem(Item i){
        
        items = getItems();
        ItemDAO itemDAO = WebManager.getInstance().itemDAO;
        
        for(int j = 0; j < items.size(); ++j){
            if(i.getBook().getId() == items.get(j).getBook().getId()){
                itemDAO.delete(items.get(j));
                return;
            }
        }
    }
    
    public void changeItem(Item i){
        for(int j = 0; j < items.size(); ++j){
            if(i.getBook().getId() == items.get(j).getBook().getId()){
                items.get(j).setAmount(items.get(j).getAmount() + i.getAmount());
                if(items.get(j).getAmount() <= 0) items.remove(j);
                return;
            }
        }
    }
    
    public void clearCart(){
        
    }
    
}
