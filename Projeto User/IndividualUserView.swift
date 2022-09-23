//
//  IndividualUserView.swift
//  Projeto User
//
//  Created by user222137 on 9/22/22.
//

import SwiftUI
import CoreData

struct IndividualUserView: View {

    @Environment(\.managedObjectContext) var managedObjectContext

    //@FetchRequest(sortDescriptors: [SortDescriptor(\.name)]) var user: FetchedResults<Usuarios>

    var body: some View {

        VStack {

            Text("Informações do usuario ")

            VStack{
                
                List {

                                


                }
            }
        }
    }
}


