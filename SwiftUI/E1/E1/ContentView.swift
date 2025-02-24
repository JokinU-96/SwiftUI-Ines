//
//  ContentView.swift
//  E1
//
//  Created by  on 24/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "tortoise")
                .imageScale(.large)
                .foregroundStyle(.black)
            Text("Bienvenidos a mi primera APP en SwiftUI")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
