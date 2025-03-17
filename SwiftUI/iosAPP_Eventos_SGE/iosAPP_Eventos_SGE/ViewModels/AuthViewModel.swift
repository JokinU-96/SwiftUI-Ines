//
//  AuthViewModel.swift
//  iosAPP_Eventos_SGE
//
//  Created by  on 17/3/25.
//

import SwiftUI
class AuthViewModel: ObservableObject {
    @Published var user: User? = nil
    @Published var token: String? = nil
    func login(email: String, password: String) {
        guard let url = URL(string: "\(API.baseURL)/auth/login") else {
            return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let loginData = LoginRequest(email: email, password: password)
        request.httpBody = try? JSONEncoder().encode(loginData)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let decodedResponse = try?
                JSONDecoder().decode(LoginResponse.self, from: data) {
                DispatchQueue.main.async {
                    self.user = decodedResponse.user
                    self.token = decodedResponse.access_token
                }
            }
        }.resume()
    }
    func logout() {
        self.user = nil
        self.token = nil
    }
}
