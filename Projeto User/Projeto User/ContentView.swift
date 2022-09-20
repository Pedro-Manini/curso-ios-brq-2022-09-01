//
//  ContentView.swift
//  Projeto User
//
//  Created by Pedro Manini on 9/19/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext

    @FetchRequest(sortDescriptors: [] ) var usuarios: FetchedResults<Usuarios>

    var body: some View {
        NavigationView {
            VStack {
            }
//            List {
//                ForEach() { Usuarios in
//                    NavigationLink {
//                        Text("Item at \(usuarios.timestamp!, formatter: itemFormatter)")
//                    } label: {
//                        Text(usuarios.timestamp!, formatter: itemFormatter)
//                    }
//                }
//                .onDelete(perform: //deleteUsuarios)
//            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: //addUsuarios) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            Text("Select an item")
        }
    }

    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
