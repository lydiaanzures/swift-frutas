//
//  OnboardingView.swift
//  swift-fruits
//
//  Created by Lydia Anzures
//

import SwiftUI

struct OnboardingView: View {
  // PROPERTIES
  
    var fruits: [Fruit] = fruitsData
  
  // BODY
  
  var body: some View {
    TabView {
        ForEach(fruits[0...5]) { item in
            FruitCardView(fruit: item)
        } //end loop
//        FruitCardView(fruit: item)
//        Text("Cards")
    } //END TAB
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

// PREVIEW

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
      OnboardingView(fruits: fruitsData)
  }
}
