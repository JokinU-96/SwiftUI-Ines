//
//  UserView.swift
//  iosAPP_Eventos_SGE
//
//  Created by  on 17/3/25.
//
import SwiftUI

struct UserView: View {
    
    @ObservedObject var authVM: AuthViewModel
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            if let user = authVM.user {
                Text("Bienvenido, \(user.name)!")
                Button("Cerrar sesión") {
                    authVM.logout()
                }
                .padding()
                .background(Color("PrimaryColor"))
                .foregroundColor(.white)
                .cornerRadius(10)
            } else {
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textCase(.lowercase)
                    .padding()
                SecureField("Contraseña", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button("Iniciar sesión") {
                    authVM.login(email: email, password: password)
                }
                .padding()
                .background(Color("PrimaryColor"))
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
    }
}
#Preview {
    UserView(authVM: AuthViewModel())
}
