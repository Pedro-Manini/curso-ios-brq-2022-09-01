//
//  BlueCircleView.swift
//  ProjetoNav
//
//  Created by user222137 on 9/13/22.
//

import SwiftUI

struct BlueCircleView: View {
    var body: some View {
        
        VStack {
            ZStack{                
                CircleView(cor: (.blue), text: "2")
                
            }.padding()
            
            NavigationLink(destination: YellowCircleView(), label: {
                NavText(navText: "Próxima Página ->")
                
            })
        }
        
    }
}

struct BlueCircleView_Previews: PreviewProvider {
    static var previews: some View {
        BlueCircleView()
    }
}
