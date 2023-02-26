//
//  FruitRowView.swift
//  FruitVocabulary
//
//  Created by Mehmet Ergün on 2023-02-24.
//

import SwiftUI

struct FruitRowView: View {
    
    //MARK: - PROPERTY
    
    var fruit: Fruit
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 10, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(5)
      
            }
        }// --- HSTACK 
    }
}

//MARK: - PREVIEW
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[3])
            .previewLayout(.sizeThatFits)
            .padding(20)
    }
}
