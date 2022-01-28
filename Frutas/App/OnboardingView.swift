//
//  OnboardingView.swift
//  swift-fruits
//
//  Created by Lydia Anzures
//

import SwiftUI

struct OnboardingView: View {
  // PROPERTIES
  
  
  
  // BODY
  
  var body: some View {
    TabView {
        FruitCardView()
    } //END TAB
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

// PREVIEW

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
