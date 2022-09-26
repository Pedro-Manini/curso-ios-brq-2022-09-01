//
//  YellowCircleView.swift
//  ProjetoNav
//
//  Created by user222137 on 9/13/22.
//

import SwiftUI



struct YellowCircleView: View {
    var body: some View {
        
        VStack {
            ZStack{
                CircleView(cor: (.yellow), text: "3")
                
                
            }.padding()
            
            NavigationLink(destination: ContentView(), label: {
                NavText(navText: "Voltar ao inicio")
                
            })
        }
    }
}

struct YellowCircleView_Previews: PreviewProvider {
    static var previews: some View {
        YellowCircleView()
    }
}
