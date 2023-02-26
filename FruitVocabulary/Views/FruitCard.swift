//
//  FruitCard.swift
//  FruitVocabulary
//
//  Created by Mehmet Ergün on 2023-02-24.
//

import SwiftUI

struct FruitCard: View {
    
    //MARK: - PROPERTY
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 20, content: {
                
                // FRUIT IMAGE
                
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.35), radius: 10, x: 6, y: 8)
                
                // FRUIT TITLE
                
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.35), radius: 2, x: 2, y: 2)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // FRUIT HEADLINE
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON START
                
                StartButtonView()
                    .padding(.vertical, 40)
                
            })// --- VSTACK
            
        }// --- ZSTACK
        
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .padding(.horizontal, 20)
        
    }
}


//MARK: - PREVIEW

struct FruitCard_Previews: PreviewProvider {
    static var previews: some View {
        FruitCard(fruit: fruitsData[4])
            .previewLayout(.sizeThatFits)
            .padding(20)
            
    }
}
