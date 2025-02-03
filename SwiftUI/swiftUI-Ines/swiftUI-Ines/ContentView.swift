//
//  ContentView.swift
//  swiftUI-Ines
//
//  Created by  on 3/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "wand.and.sparkles")
                .resizable()
                .frame(width: 100 , height: 100)
                .imageScale(.large)
                .foregroundStyle(.yellow)
                .padding(.bottom, 20)
            Text("Archila morchila!")
                .font(.headline)
                .padding(.all, 100)
            Button(action: {print("Botón presionado")}){
                Text("Presiona el botón")
                    .padding(.all, 40)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
