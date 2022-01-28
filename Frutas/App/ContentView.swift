//
//  ContentView.swift
//  Shared
//
//  Created by Lydia Anzures
//

import SwiftUI

struct ContentView: View {
  // PROPERTIES
  
  @State private var isShowingSettings: Bool = false
//
  var fruits: [Fruit] = fruitsData
    
    

    // BODY

    var body: some View {
        
      NavigationView {
//          Text("Hello world")
        List {
            //list the shuffled fruit rows
          ForEach(fruits.shuffled()) { item in
            NavigationLink(destination: FruitDetailView(fruit: item)) {
              FruitRowView(fruit: item)
                .padding(.vertical, 4)
            }
          }
 }
        .navigationTitle("Fruits")
        .navigationBarItems(
          trailing:
            Button(action: {
              isShowingSettings = true
            }) {
              Image(systemName: "slider.horizontal.3")
            } //: BUTTON
            .sheet(isPresented: $isShowingSettings) {
              SettingsView()
            }
        )
      } //: NAVIGATION
//      .navigationViewStyle(StackNavigationViewStyle())
    }
  }

  // PREVIEW

  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(fruits: fruitsData)
    }
  }

