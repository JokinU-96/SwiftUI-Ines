//
//  EventModels.swift
//  iosAPP_Eventos_SGE
//
//  Created by  on 17/3/25.
//
import SwiftUI

struct Event : Identifiable, Codable {
    var id : Int
    var event_name : String
    var event_detail : String
    var event_type_id : Int
}
