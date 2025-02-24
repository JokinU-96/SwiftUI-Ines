//
//  ContentView.swift
//  E2
//
//  Created by  on 24/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "tortoise")
                .imageScale(.small)
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
            VStack {
                Text("Esto es un subtítulo.")
                    .font(.system(size: 16, weight: .light, design: .monospaced))
                    .multilineTextAlignment(.center)
            }
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
