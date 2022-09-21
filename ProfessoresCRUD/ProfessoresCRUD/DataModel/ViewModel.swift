//
//  ViewModel.swift
//  ProfessoresCRUD
//
//  Created by user222137 on 9/21/22.
//

import Foundation

/**
        Camada responsável por gerenciar os objetos ''pegados" e enviados pela API
        Responsável por fazer o CRUD -> LER , CRIAR, ALTERAR e DELETAR  com a API
 
        Serializar é o ato de transformar um objeto em binário (0 e 1) -> Codable
        Deserializar é o ato de pegar um binário e transfomar em um objeto -> Decodable
 */
class ViewModel {
    
    let urlAddr: String = "https://cors.grandeporte.com.br/cursos.grandeporte.com.br:8080/professores"
    
    var items: [ProfessorModel] = []
    
    /**
                Fetch é pegar todos os dados da API
     */
    func fetchProfessores() {
        
        guard let url = URL(string: urlAddr) else {
            print("URL NOT FOUND")
            return
        }
        
        /**
            dataTask é para criar uma tarefa de forma assíncrona para que o usuário
                    possa fazer outras coisas em paralelo sem precisar ficar esperando
                            a resposta da requisição
         
                O shared é uma variável que está dentro da classe URLSession e serve para compartilhar/executar tasks
                    na aplicação para criar as requisições feitas pelo APP de forma assíncrona
         */
        URLSession.shared.dataTask(with: url){ (data, res, error) in
            
            if error != nil {
                print("error \(error!)")
                return
            } //if
            
            do {
                if let data  = data{
                    let result = try JSONDecoder().decode([ProfessorModel].self, from: data)
                    
                    self.items = result
                }
            }// do
            catch {
                print("fetch error")
            } // catch
            
        }.resume()
        // o resume é necessário para executar a task
    }
    
    func createProfessor(nome: String, email: String){
        
        guard let url = URL(string: urlAddr) else {
            print("URL NOT FOUND")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        let professor : ProfessorModel = ProfessorModel(id: 0, nome: nome, email: email)
        
        do{
            // serializando para enviar para a API
            request.httpBody = try JSONEncoder().encode(professor)
        }
        catch{
            print("Erro ao converter o professor")
        }
        
        // agora é criar a tarefa que vai fazer a requisição para a API
        
        URLSession.shared.dataTask(with: request){ (data, res, error) in
            
            if error != nil {
                print("error: \(error!)")
                return
            }// if
            
            do {
                // pegando a resposta da API
                if let data = data{
                    let result = try JSONDecoder().decode(ProfessorModel.self, from: data)
                }
            }//do
            catch {
                print("Erro ao converter o professor")
            }//catch
            //resume executa a tarefa
        }.resume()
        //dataTask
        
    }
    
    func editProfessor(id: Int, nome: String, email: String) {
        
        guard let url = URL(string: "\(urlAddr)/\(id)") else {
            print("URL NOT FOUND")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "PATCH"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        let professor : ProfessorModel = ProfessorModel(id: id, nome: nome, email: email)
        
        do {
            // serializando para enviar para a API
            request.httpBody = try JSONEncoder().encode(professor)
        }
        catch {
            print("Erro ao converter o professor")
        }
        
        // agora é criar a tarefa que vai fazer a requisição para a API
        
        URLSession.shared.dataTask(with: request){ (data, res, error) in
            
            if error != nil {
                print("error: \(error!)")
                return
            }// if
            
            do{
                // pegando a resposta da API
                if let data = data {
                    let result = try JSONDecoder().decode(ProfessorModel.self, from: data)
                }
            }//do
            catch {
                print("Erro ao converter o professor")
            }//catch
            //resume executa a tarefa
        }.resume()
        //dataTask
        
    }
    
    func deleteProfessores(id : Int){
        
        guard let url = URL(string: "\(urlAddr)/\(id)") else {
            print("URL NOT FOUND")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "DELETE"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        URLSession.shared.dataTask(with: request){ (data, res, error) in
            
            if error != nil {
                print("error: \(error!)")
                return
            }// if
            
            //resume executa a tarefa
        }.resume()
        //dataTask
        
    }
}
