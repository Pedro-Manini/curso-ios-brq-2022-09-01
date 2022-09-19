//
//  DataController.swift
//  Projeto iCal
//
//  Created by user222137 on 9/15/22.
//

import Foundation
import CoreData

/**
 
 Data Controller vai ser uma classe que vai agrupar as funções
 que vai permitir manipular os dados:
 
 save() - permite salvar os dados no banco de dados do CoreData
 update() - permite alterar os dados no banco de dados do CoreData
 
 CRUD : Create, Read ( Ler tudo ou ler apenas um registro ), Update, Delete
 
 Um contexto no Core Data está relacionado a quais entidades o mesmo pode gerenciar : fazer CRUD das mesmas
 
 Try-catch é um mecanismo que permite  'tentar fazer algo' com possibilidade de
 tratamos este erro sem que o aplicativo pare
 
 
 A Data Controller tem o objetivo de ser uma classe controladora: que centraliza as funções de CRUD no nosso aplicativo

 */

class DataController : ObservableObject {
    
    /**
     NSPersistentContainer ajuda a gerenciar os objetos que serão
     salvos no Core Data.
     */
    let container = NSPersistentContainer(name: "FoodModel")
    
    init(){
        /**
            Quando inicializa-se o container (NSPersistentContainer), é necessário carregar os objetos do Core Data para poderem ser manipulados
         */
        container.loadPersistentStores{ description, error in
            if let error = error{
                print("Erro ao carregar os dados \(error)")
            }
            
        }
    }

    func save(context: NSManagedObjectContext){
        do{
            // try - catch
            try context.save()
        }
        catch {
            //let error = error as NSError
            print("Erro ao salvar os dados no contexto \(error)")
        }
    }
    
    /**
            UUID , name, date, calories
     */
    func addFood(name: String, calories: Double, context : NSManagedObjectContext){
        
        let food = Food(context: context)
        
        food.name = name
        food.calories = calories
        food.id = UUID()
        food.date = Date()
        
        save(context: context)
    }
    

    func editFood(foodOld: Food, name: String, calories: Double, context: NSManagedObjectContext){
        
        foodOld.name = name
        foodOld.calories = calories
        foodOld.date = Date()
        
        save(context: context)
    
    }
    
}
