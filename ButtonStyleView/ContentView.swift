//
//  ContentView.swift
//  ButtonStyleView
//
//  Created by ErRayn on 26.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Button(action: {
                print("Button action")
            }) {
                HStack {
                    Image(systemName: "bookmark.fill")
                    Text("Bookmark")
                }
            }.buttonStyle(GradientButtonStyle())
        }
    }
}

struct GradientButtonStyle: ButtonStyle{
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(15.0)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
