//
//  ContentView.swift
//  Projeto pokeAPI
//
//  Created by user222137 on 9/26/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel : ViewModel
    
    var body: some View {
        
        VStack{
            NavigationView{
                
                List{
            
                    ForEach(viewModel.pokeModels, id: \.name){ poke in
                        
                        VStack{
                            Text("\(poke.name)")
                            
                        }                        
                    }
                }.navigationTitle("Lista de pokemons:")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewModel())
    }
}
