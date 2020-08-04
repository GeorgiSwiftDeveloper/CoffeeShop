//
//  DrinkRow.swift
//  CoffeeApp
//
//  Created by Georgi Malkhasyan on 8/4/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    
    var categoryName: String
    var drinks: [Drink]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .top) {
                ForEach (drinks, id: \.id) { drink in
                    DrinkItem(drink:drink)
                        .frame(width: 300)
                        .padding(.trailing, 30)
                }
            }
        }
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "HOT DRINKS", drinks: drinkData)
    }
}
