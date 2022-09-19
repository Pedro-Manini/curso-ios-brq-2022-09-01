//
//  ContentView.swift
//  Projeto iCal
//
//  Created by user222137 on 9/15/22.
//

import SwiftUI
import CoreData


/**
 
 @Environment -> serve para instanciar uma variável que está global na nossa aplicação.
 Ex: O gerenciador de objetos do contexto do banco de dados
 
 @FetchRequest é um mecanismo que permite consultar o objetos que estão armazenado no CoreData,
 inclusive com ordenação
 
 SortDescriptor serve para descrever como vc quer ordenar os dados
 
 */

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @FetchRequest ( sortDescriptors: [SortDescriptor(\.date, order : .reverse)] ) var food: FetchedResults<Food>
    
    @State var isAddView : Bool = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Text("\(Int( getTotalCalories() ) ) calories today.")
                    .foregroundColor(.gray)
                    .padding()
                
                List{
                    
                    ForEach(food) { foodElement in
                        Text(foodElement.name ??  "" )
                        
                    }
                }
                
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button{
                            isAddView = true
                        } label: {
                            Label("Add Label", systemImage: "plus.circle")
                        }
                    }
                }
                
                .sheet(isPresented: $isAddView){
                    AddFoodView()
                }
                
            }
            
            
        }
    }
    
    func getTotalCalories() -> Double {
        3+3
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
