//
//  FruitsModel.swift
//  swift-fruits
//
//  Created by Lydia Anzures
//

import SwiftUI

//FRUITS DATA MODEL!!!

struct Fruit: Identifiable{
    //universally unique identifier
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    
//    will hold the light and dark color values
    var gradientColors: [Color]
    
    var description: String
    var nutrition: [String]
}
