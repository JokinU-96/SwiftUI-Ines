//
//  ContentView.swift
//  helloworld
//
//  Created by  on 3/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("¡Hola, SwiftUI!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.cyan)
                .padding()
            Text("Estamos empezando con pequeños ejemplos de SwitUI")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundStyle(.cyan)
                .frame(minWidth: 200, maxWidth: 200)
                .padding()
            Spacer()
        }
        .padding()
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .background(Color.yellow)
    }
}

#Preview {
    ContentView()
}
