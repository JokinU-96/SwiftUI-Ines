//
//  ContentView.swift
//  E3
//
//  Created by  on 24/2/25.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.gray, Color.white],
    startPoint: .bottom, endPoint: .top)

struct ContentView: View {
    @State var email: String = ""
    var body: some View {
        ZStack{
            backgroundGradient
            VStack {
                Image(systemName: "tortoise")
                    .imageScale(.large)
                    .foregroundStyle(.gray)
                Image("ni")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .imageScale(.small)
                    .frame(width: 200, height:120, alignment: .topLeading)
                    .clipped()
                Text("NI")
                    .font(.largeTitle)
                    .fontDesign(.rounded)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                VStack{
                    Text("Student")
                        .font(.title)
                        .fontDesign(.monospaced)
                        .foregroundColor(.gray)
                }
                Button(action:{
                    print("Este no es un móvil real.")
                }){
                    Text("123123123")
                        .fontDesign(.monospaced)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                }
                .background(.gray)
                .cornerRadius(10)
                
                Button(action:{
                    print("Que éste no es un móvil real.")
                }){
                    TextField("", text: $email, prompt:
                                Text(verbatim: "jokin.urteaga@ikasle.egibide.org")
                        .foregroundColor(.white)
                    )
                        .fontDesign(.monospaced)
                        .fontWeight(.bold)
                        .padding()
                }
                .background(.gray)
                .cornerRadius(10)
            }
            .padding()
            .background(.white)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
