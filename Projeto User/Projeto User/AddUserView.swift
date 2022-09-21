//
//  AddUserView.swift
//  Projeto User
//
//  Created by user222137 on 9/19/22.
//

import SwiftUI
import CoreData

struct AddFoodView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @State var nome : String = ""
    @State var sobrenome : String = ""
    @State var email : String = ""
    @State var senha : String = ""
    
    
    //@Binding var isAddView : Bool
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        Form{
            Section{
                TextField("Nome do usuario", text: $nome )
                
                
                HStack{
                    Button("Adicionar"){
                        DataController().addUsuarios(nome: self.nome, sobrenome: self.sobrenome, senha: self.senha, email: self.email, context: managedObjectContext)
                        
                        //isAddView = false
                        dismiss()
                    }
                }
            }
        }
    }
}
