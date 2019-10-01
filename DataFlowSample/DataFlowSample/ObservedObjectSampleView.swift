//
//  ObservedObjectSampleView.swift
//  DataFlowSample
//  
//  Created by maeda.tasuku on 2019/10/01
//  Copyright © 2019 Classmethod. All rights reserved.
//

import SwiftUI

class Company: ObservableObject {
    @Published var name: String = ""
}


struct ObservedObjectSampleView: View {
    
    @ObservedObject var company: Company
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            Text("Company Name: \(company.name)")
            
            HStack {
                TextField("Company Name", text: $company.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    let currentName = self.company.name
                    var eracedName:String = ""
                    if currentName.count == 0 {
                        eracedName = ""
                    } else {
                        eracedName = String(currentName.prefix(currentName.count - 1))
                    }
                    self.company.name = eracedName
                }, label: {
                    Image(systemName: "delete.left")
                }).foregroundColor(Color.blue)
            }
            
            Spacer()
        }
        .padding(.leading, 60)
        .padding(.trailing, 60)
    }
}

//struct ObservedObjectSampleView_Previews: PreviewProvider {
//    static var previews: some View {
//        ObservedObjectSampleView()
//    }
//}
