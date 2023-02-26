//
//  SettingsView.swift
//  FruitVocabulary
//
//  Created by Mehmet Ergün on 2023-02-24.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERY
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20, content: {
                    
                    //MARK: - SECTION 1
                    
                    GroupBox(label:
                                HStack {
                        Text("Fruit Vocabulary".uppercased())
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "info.circle")
                    }) {
                        Text("Hello, World")
                    }
                    
                    //MARK: - SECTION 2
                    
                    
                    
                    //MARK: - SECTION 3
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                })// --- VStack
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
                
                .padding()
            }// --- Scroll
            
        }// --- NavigationView
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
