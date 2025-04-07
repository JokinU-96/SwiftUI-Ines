//
//  EventDetailView.swift
//  iosAPP_Eventos_SGE
//
//  Created by  on 17/3/25.
//

import SwiftUI

struct EventDetailView: View {
    
    var event: Event
    @StateObject var authVM: AuthViewModel = AuthViewModel()
    @StateObject var eventVM: EventViewModel = EventViewModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Spacer()
                Image(systemName: "photo")  // Imagen de evento por defecto
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .foregroundStyle(.red)
                    .opacity(0.5)
                    .cornerRadius(12)
                VStack(alignment: .leading, spacing: 10) {
                    Text(event.event_name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                    Text("Fecha: \(Date().formatted())")
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text("Descripción: \(event.event_detail)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Text("Tipo de evento: \(event.event_type_id)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .shadow(radius: 3)
                
                if let user = authVM.user {
                    Button("Inscribirse") {
                        eventVM.registerUserToEvent(eventId: event.id, userId: user.id)
                        print("Inscrito en el evento")
                    }
                    .padding()
                    .background(Color("PrimaryColor"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                Spacer()
            }
            .padding()
        }
        //.navigationTitle("Detalles del Evento")
    }
}
#Preview {
    EventDetailView(
        event: Event(id: 2, event_name: "Ponencia",event_detail: "StackOverflow manager", event_type_id: 3),
        authVM: AuthViewModel(),
        eventVM: EventViewModel()
    )
}
