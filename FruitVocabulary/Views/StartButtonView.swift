//
//  StartButtonView.swift
//  FruitVocabulary
//
//  Created by Mehmet Ergün on 2023-02-24.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK: - PROPERTY
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - BODY
    
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8, content: {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            })
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }// --- BUTTON
        .accentColor(.white)

    }
}

//MARK: - PREVIEW

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
