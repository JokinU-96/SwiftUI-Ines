//
//  UserModel.swift
//  iosAPP_Eventos_SGE
//
//  Created by  on 17/3/25.
//
import SwiftUI

struct User : Identifiable, Codable{
    var id : Int
    var name : String
    var email : String
    var role_id : Int
}
