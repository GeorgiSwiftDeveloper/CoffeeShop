//
//  DrinkItem.swift
//  CoffeeApp
//
//  Created by Georgi Malkhasyan on 8/4/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import SwiftUI

struct DrinkItem: View {
    
    var drink: Drink
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16.0) {
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            
            
            VStack(alignment: .leading, spacing: 5){
                Text(drink.name)
                    .font(.headline)
                Text(drink.description)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
            }
        }
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
