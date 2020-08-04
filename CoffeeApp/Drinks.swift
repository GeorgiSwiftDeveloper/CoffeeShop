//
//  Drinks.swift
//  CoffeeApp
//
//  Created by Georgi Malkhasyan on 8/4/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import SwiftUI



struct Drink: Identifiable, Codable,Hashable {
    var id: String
    var name: String
    var imageNamge: String
    var category: String
    var description: String
    
    
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
