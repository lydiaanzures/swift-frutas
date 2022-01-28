//
//  swift_fruitsApp.swift
//  Shared
//
//  Created by Lydia Anzures in January 2022.
//

import SwiftUI


@main

struct swift_fruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
      WindowGroup {
        if isOnboarding {
          OnboardingView()
        } else {
          ContentView()
        }
      }
    }
  }


//Views - defines a piece of UI in the application - building blocks to what we see on screen

//Scenes - views form the content of scenes

// Store state value using app storage - to manage screen state

// Conditional statements - set a variable that will decide whether we see the onboarding view or the content view

//Start button
