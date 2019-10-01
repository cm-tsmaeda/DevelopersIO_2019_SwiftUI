//
//  BindingView.swift
//  DataFlowSample
//  
//  Created by maeda.tasuku on 2019/10/01
//  Copyright © 2019 Classmethod. All rights reserved.
//

import SwiftUI

struct BindingSampleView: View {
    @State private var tapCount: Int = 0
    
    var body: some View {
        VStack {
            
            Text("Tapped count \(tapCount)")
                .padding(.bottom, 20)
            
            Button(action: {
                self.tapCount += 1
            }, label: {
                Text("Count up!")
            }).padding(.bottom, 40)
            
            BindingChildView(tapCount: $tapCount)
        }
    }
}

struct BindingChildView: View {
    @Binding var tapCount: Int
    
    var body: some View {
        VStack {
            Button(action: {
                self.tapCount += 1
            }, label: {
                Text("Count up from Child View!")
            })
        }
        .background(Color.init(hue: 185 / 360.0, saturation: 0.19, brightness: 0.95))
        .frame(height: 40)
    }
}

//struct BindingView_Previews: PreviewProvider {
//    static var previews: some View {
//        BindingView()
//    }
//}
