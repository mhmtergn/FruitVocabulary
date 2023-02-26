//
//  OnboardingView.swift
//  FruitVocabulary
//
//  Created by Mehmet Ergün on 2023-02-24.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTY
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    
    var body: some View {
        TabView {
            
            ForEach(fruits[0...5]) {item in
                FruitCard(fruit: item)

            }
   
        }       // --- TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

    //MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
