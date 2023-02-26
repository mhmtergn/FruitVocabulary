//
//  ContentView.swift
//  FruitVocabulary
//
//  Created by Mehmet Ergün on 2023-02-24.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTY
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    
    //MARK: - BODY
    var body: some View {
        
        NavigationView {
            List(fruits.shuffled()) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical , 5)
                }// --- NavigationView
            }// --- List
        }
        .navigationTitle("Fruits")
        .navigationBarItems(trailing: Button(action: {
            isShowingSettings = true
        }, label: {
            Image(systemName: "slider.horizontal.3")
        }))
        .sheet(isPresented: $isShowingSettings) {
            
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
