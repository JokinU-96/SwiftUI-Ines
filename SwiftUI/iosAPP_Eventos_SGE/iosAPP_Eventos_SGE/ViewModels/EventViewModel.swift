//
//  EventViewModel.swift
//  iosAPP_Eventos_SGE
//
//  Created by  on 17/3/25.
//
import SwiftUI

class EventViewModel : ObservableObject {
    @Published var events : [Event] = []
    
    func fetchEvents(){
        guard let url = URL(string : "\(API.baseURL)/events") else{return}
        URLSession.shared.dataTask(with: url){ data , response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([Event].self, from: data){
                    DispatchQueue.main.async{
                        self.events = decodedResponse
                    }
                }
            }
        }.resume()
    }
}
