//
//  ContentView.swift
//  Ejercicio_03
//
//  Created by  on 24/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    var body: some View {
        VStack {
            Text("Contador: \(count)")
                .font(.largeTitle)
            Button("Incrementar"){count += 1}
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
