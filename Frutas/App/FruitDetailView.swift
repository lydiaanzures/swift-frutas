//
//  FruitDetailView.swift
//  swift-fruits
//
//  Created by Lydia Anzures
//

import SwiftUI

struct FruitDetailView: View {
    //PROPERTIES
    var fruit: Fruit
    //BODY
    var body: some View {
//        Text("Hello, World!")
//        Text(fruit.title)
        NavigationView {
          ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HEADER
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .leading, spacing: 20) {
                  // TITLE
                  Text(fruit.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(fruit.gradientColors[1])
                    
                    // HEADER
                    Text(fruit.headline)
                      .font(.headline)
                      .multilineTextAlignment(.leading)
                    
                    // NUTRIENTS
                    FruitNutrientsView(fruit: fruit)
                   
                    
                    // SUBHEADER
                    Text("Learn more about \(fruit.title)".uppercased())
                      .fontWeight(.bold)
                      .foregroundColor(fruit.gradientColors[1])
                    
                    // DESCRIPTION
                    Text(fruit.description)
                      .multilineTextAlignment(.leading)
                    
                    // LINK
                    SourceLinkView()
                        .padding(.top, 10)
                        .padding(.bottom, 40)
                  } //: VSTACK
                  .padding(.horizontal, 20)
                  .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
              
                .navigationBarTitle(fruit.title, displayMode: .inline)
              //this will get rid of gap at top
                .navigationBarHidden(true)
              } //: SCROLL - ignore the spacing at the very top of screen
              .edgesIgnoringSafeArea(.top)
            } //: NAVIGATION
            .navigationViewStyle(StackNavigationViewStyle())
          }
        }


// PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
