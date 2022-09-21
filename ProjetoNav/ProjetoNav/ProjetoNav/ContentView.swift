//
//  ContentView.swift
//  ProjetoNav
//
//  Created by user222137 on 9/13/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    CircleView(cor: .red, text: "1")
    
                  
                }.padding()
                
                
                
                NavigationLink(destination: BlueCircleView(), label: {
                    NavText(navText: "Próxima Página ->")
                        
                })
                
                HomeView().padding()
            }
        }
    }
}


struct NavText: View{
    
    var navText: String
    var body: some View {
        
            Text(navText)
                .foregroundColor(.blue)
                .font(.system(size: 20, weight: .bold))
                
    }
}

struct CircleView: View {
    
    var cor: Color
    var text: String
    
    var body: some View {
        
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(cor)
        
        Text(text)
            .foregroundColor(.white)
            .font(.system(size: 70, weight: .bold))
    }
}






struct HomeView: View {
    
    var body: some View{
        
        VStack{
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Bem-vindo")
                    
            }
            .padding()
            
            VStack{
                Button(action: {}, label: {
                    Label("Login", systemImage: "doc") })
                    .frame(width: 90, height: 40)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                
                Button(action: {}, label: {
                    Label("Esqueci Minha Senha", systemImage: "key") })
                                    .frame(width: 220, height: 40)
                                    .background(.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(20)
                    
            }
            .padding()
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
