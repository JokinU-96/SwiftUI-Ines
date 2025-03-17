//
//  LoginResponse.swift
//  iosAPP_Eventos_SGE
//
//  Created by  on 31/3/25.
//

struct LoginResponse: Codable {
    let access_token: String
    let token_type: String
    let expires_in: Int
    let user: User
}
