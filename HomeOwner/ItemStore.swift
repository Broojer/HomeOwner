//
//  ItemStore.swift
//  HomeOwner
//
//  Created by Student on 4/11/16.
//  Copyright © 2016 shp. All rights reserved.
//

import UIKit

class ItemStore {
    
    var allItems = [Item]()
    
    init() {
        
        for _ in 0..<5 {
            createItem()
            
        }
    }

    
    func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
        
    }
    
  func removeItem(item: Item) {
        
        if let index = allItems.indexOf(item) {
        
        allItems.removeAtIndex(index)
        
        
        
    }

}
    
    
    
    





}

