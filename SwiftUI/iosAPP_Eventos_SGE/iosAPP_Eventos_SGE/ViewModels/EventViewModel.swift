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
    
    func registerUserToEvent(eventId: Int, userId: Int){
        guard let url = URL(string: "\(API.baseURL)/user/event/book") else {return}
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        if let token = UserDefaults.standard.string(forKey: "token"){
            request.setValue("Bearer\(token)", forHTTPHeaderField: "Authorization")
        } else {
            print("No se encontró el token de autenticación")
            return
        }
        
        let registration = BookRequest(event_id: eventId, user_id: userId)
        request.httpBody = try? JSONEncoder().encode(registration)
        print(request.httpMethod!)
        
        URLSession.shared.dataTask(with: request) {
            data, response, error in
            if let response = response as? HTTPURLResponse, response.statusCode == 200{
                print("Registro exitoso")
            }
            if let error = error {
                print(error)
            }
            
        }.resume()
        
    }
}
