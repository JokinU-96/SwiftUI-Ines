//
//  TaskViewModel.swift
//  Ejercicio_05_IOS
//
//  Created by  on 24/2/25.
//
import Foundation
class TaskViewModel : ObservableObject{
    @Published var tasks: [Task] = []
    func addTask(title: String){
        tasks.append(Task(title:title))
    }
}
