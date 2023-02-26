//
//  FruitDetailView.swift
//  FruitVocabulary
//
//  Created by Mehmet Ergün on 2023-02-24.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTY
    
    var fruit: Fruit
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            
            ScrollView(.vertical,showsIndicators: false) {
                VStack(alignment: .center,spacing: 20) {
                    
                    // HEADER
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading,spacing: 20, content: {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //LINK
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    })
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }// --- VStack
                
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
                .edgesIgnoringSafeArea(.top)
                
            }// --- ScrollView
            
        }// -- Navigation
    }
}

//MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
    }
}
