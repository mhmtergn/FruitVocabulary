//
//  FruitVocabularyApp.swift
//  FruitVocabulary
//
//  Created by Mehmet Ergün on 2023-02-24.
//

import SwiftUI

@main
struct FruitVocabularyApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else {
                ContentView()
            }   
        }
    }
}
