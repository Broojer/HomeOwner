//
//  Item.swift
//  HomeOwner
//
//  Created by Student on 4/11/16.
//  Copyright © 2016 shp. All rights reserved.
//

import UIKit


class Item: NSObject
{
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    let dateCreated: NSDate
    
    init(name: String, serialNumber: String?, valueInDollars: Int) {
        
        self.name = name
        self.serialNumber = serialNumber
        self.valueInDollars = valueInDollars
        self.dateCreated = NSDate()
        
        super.init()
    
    }
    
   
    convenience init(random: Bool = false) {
        if random {
            
            let adjetives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            var idx = arc4random_uniform(UInt32(adjetives.count))
            let randomAdjetive = adjetives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjetive) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = NSUUID().UUIDString.componentsSeparatedByString("-").first!
            
            self.init(name: randomName, serialNumber: randomSerialNumber, valueInDollars: randomValue)
            
        } else {
            
            self.init(name: "", serialNumber: nil, valueInDollars: 0)
            
            }
        }
        
        
        
}

    
    
    
    
    

