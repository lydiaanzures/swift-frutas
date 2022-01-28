//
//  FruitNutrientsView.swift
//  swift-fruits
//
//  Created by Lydia Anzures
//

import SwiftUI

struct FruitNutrientsView: View {
    //Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]

    
    //Body
    
    var body: some View {
      GroupBox() {
        DisclosureGroup("Nutritional value per 100g") {
            //loop through each fruit
          ForEach(0..<nutrients.count, id: \.self) { item in
            //for spacing between rows
              Divider().padding(.vertical, 2)
            
            HStack {
              Group {
                Image(systemName: "info.circle")
                  
                  //labels of the nutrients
                Text(nutrients[item])
              }
              .foregroundColor(fruit.gradientColors[1])
              .font(Font.system(.body).bold())
              
              Spacer(minLength: 25)
              
                
              Text(fruit.nutrition[item])
                .multilineTextAlignment(.trailing)
            }
          }
        }
      } //: BOX
    }
  }


//Preview
struct FruitNutrientsView_Previews: PreviewProvider {
  static var previews: some View {
    FruitNutrientsView(fruit: fruitsData[0])
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 375, height: 480))
      .padding()
  }
}
