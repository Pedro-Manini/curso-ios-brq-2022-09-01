//
//  EditUserView.swift
//  Projeto User
//
//  Created by user222137 on 9/20/22.
//

import SwiftUI
import CoreData

struct EditUserView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @State var nome : String = ""
    @State var sobrenome : String = ""
    @State var email : String = ""
    @State var senha : String = ""
    
    
    @Environment(\.dismiss) var dismiss
    
    var user: FetchedResults<Usuarios>.Element
    
    var body: some View {
        
        Form{
            Section{
                TextField("Nome do usuario", text: $nome )
                
                
                    .onAppear(){
                       
                        if let nome = user.nome {
                            self.nome = nome
                        }
                        
                        if let sobrenome = user.sobrenome {
                            self.sobrenome = sobrenome
                        }
                        
                        if let email = user.email {
                            self.email = email
                        }
                        
                        if let senha = user.sobrenome {
                            self.senha = senha
                        }
                        
                    }
                
                HStack{
                    Button("Editar"){
                        DataController().editUsuarios(userOld: user, nome: self.nome, sobrenome: self.sobrenome, senha: self.senha, email: self.email, context: managedObjectContext)
                        
                        dismiss()
                        
                    }
                }
            }
        }
        
    }
}

