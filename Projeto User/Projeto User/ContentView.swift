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

    @FetchRequest(sortDescriptors: [SortDescriptor(\.dia, order : .reverse)]) var user: FetchedResults<Usuarios>

    var body: some View {
        NavigationView {
            
            VStack {
                
//                Text("\(user[<#Range<FetchedResults<Usuarios>.Index>#>].count) usuarios cadastrados.")
//                    .foregroundColor(.gray)
//                    .padding()
                
                List{
                    
                    ForEach(user) { userElement in
                        
                        NavigationLink(destination: EditUserView(user: userElement)){
                            
                            HStack{
                                
                                // nome e calorias um embaixo do outro
                                VStack(alignment: .leading, spacing: 5){
                                    Text("aa")
                                        .bold()
                                    
                                    //Text("\(Int(foodCalories))  ") + Text("calories").foregroundColor(.red)
                                }// VSTACK
                                
                                Spacer()
                                
                                //Text(calcTimeSince(date:foodDate))
                                
                                
                            }// HStack
                            
                        }
                        
                    }
                    .onDelete(perform: deleteUsuarios)
                }
                
            }
            
            .navigationTitle("Usuarios:")
            
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: //addUsuarios) {
//                        Label("Add Item", systemImage: "plus"))
//                }
//            }
        }
            
    }
    
    func deleteUsuarios(offset:IndexSet) {
       
        DataController().deleteUsuarios(offsets: <#T##IndexSet#>, context: <#T##NSManagedObjectContext#>, user: user)
        
    }
                           
}

    




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
