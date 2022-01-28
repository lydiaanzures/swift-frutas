//
//  FruitCardView.swift
//  swift-fruits
//
//  Created by Lydia Anzures

//

import SwiftUI

struct FruitCardView: View {
    //PROPERTIES
    var fruit: Fruit
    
    //allows us to mutate state of the animation every time card appears on screen, default is false, but we want to change to true on appear
    @State private var isAnimating: Bool = false
    //BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //FRUIT IMAGE FOR CARD NEEDED
//                Image("blueberry")
                //instead of static content, replace with variable
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
            
                //FRUIT TITLE
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Text("Blueberry")
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                //FRUIT - HEADLINE
//                Text("Blueberries are a very popular, tasty fruit native to North America but grown commercially across the Americas and Europe")
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //BUTTON: START
                //call the start button !
                StartButtonView()
                
            } //end of VSTACK
                
                
                
                
                
        
    } //end of Zstack
        .onAppear {
          withAnimation(.easeOut(duration: 0.5)) {
            isAnimating = true
          }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
//        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"),Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
}
}
//
//        .padding(.horizontal, 20))
//



//PREVIEW

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
