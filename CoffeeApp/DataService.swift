//
//  DataService.swift
//  CoffeeApp
//
//  Created by Georgi Malkhasyan on 8/4/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import Foundation


let drinkData:[Drink] = load("coffee.json")

func load<T: Decodable>(_ fileName:String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
        else{
            fatalError("Couldn't find \(fileName) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    }catch {
        fatalError("Couldn't find \(fileName) in main bundle \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch  {
        fatalError("Couldn't parse \(fileName) as \(T.self) \(error)")
    }
}
