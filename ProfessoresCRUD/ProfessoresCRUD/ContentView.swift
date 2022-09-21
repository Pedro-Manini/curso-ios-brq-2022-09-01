//
//  ContentView.swift
//  ProfessoresCRUD
//
//  Created by user222137 on 9/21/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            Button("Add"){
                ViewModel().createProfessor(nome: "", email: "opa@eaiblz.com")
            }
            
            Button("PATCH"){
                ViewModel().editProfessor(id: 630, nome: "uepaaa", email: "uepaaaa@eaiblz.com")
            }
            
            Button("Delete"){
                ViewModel().deleteProfessores(id: 630)
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
