//
//  ContentView.swift
//  iosAPP_Eventos_SGE
//
//  Created by  on 17/3/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var eventVM = EventViewModel()

    @StateObject private var authVM = AuthViewModel()

    //@StateObject private var authVM = AuthViewModel()

    var body: some View {
        VStack {
            Text("Bienvenido a Atrápalo")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.system(size: 26, weight: .bold))
                .padding()
                .cornerRadius(10)
            NavigationStack {
                List(eventVM.events) { event in
                    NavigationLink(destination: EventDetailView(event: event)) {
                        HStack {
                            Image(systemName: "calendar")
                                .resizable()
                                .foregroundStyle(.red)
                                .opacity(0.5)
                                .scaledToFit()
                                .frame(height: 150)
                                .cornerRadius(10)
                                .padding(.bottom, 8)
                            VStack(alignment: .leading) {
                                Text(event.event_name)
                                    .font(.headline)
                                    .foregroundStyle(Color("PrimaryColor"))
                                    .foregroundColor(.primary)
                                Text(event.event_detail)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                Text("Tipo: \(event.event_type_id)")
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                                Text(Date().formatted())
                                    .font(.footnote)
                                    .foregroundColor(.accentColor)
                            }
                        }
                    }
                }
                //.navigationTitle("Atrápalo")
                .onAppear { eventVM.fetchEvents() }
                Spacer()
                HStack{
                    Spacer()
                    
                    Button(action:{
                        eventVM.fetchEvents()
                    }){
                        VStack{
                            Image(systemName: "house.fill")
                            Text("Inicio")
                        }
                    }
                    .padding()
                    .foregroundStyle(.white)
                    
                    Spacer()
                    
                    NavigationLink(destination: UserView(authVM: authVM)){
                        VStack{
                            Image(systemName:  "person.fill")
                            Text("Usuario")
                        }
                    }
                    .padding()
                    .foregroundStyle(.white)
                    
                    Spacer()
                }
                .background(Color("PrimaryColor"))
            }
        }.background(Color("PrimaryColor"))
    }
}
#Preview {
    ContentView()
}
