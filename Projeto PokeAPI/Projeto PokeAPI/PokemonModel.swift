//
//  PokemonModel.swift
//  Projeto pokeAPI
//
//  Created by user222137 on 9/26/22.
//

import Foundation

struct PokemonData : Codable {
    
    var count: Int
    //var next: String
    //var previous : String = ""
    var results : [PokemonModel] = []
   
    
}
struct PokemonModel : Codable {
    
    var name: String
    var url: String
    
}
