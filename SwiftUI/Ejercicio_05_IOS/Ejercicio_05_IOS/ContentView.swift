//
//  ContentView.swift
//  Ejercicio_05_IOS
//
//  Created by  on 24/2/25.
//

import SwiftUI
struct ContentView: View {
    @State private var newtaskTitle = ""
    @ObservedObject var viewModel = TaskViewModel()
    var body: some View {
        VStack {
            TextField("Nueva Tarea", text : $newtaskTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Agregar"){
                viewModel.addTask(title: newtaskTitle)
                newtaskTitle = ""
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10)
        }
        
        List(viewModel.tasks){
            task in Text(task.title)
        }
    }
}

#Preview {
    ContentView()
}
