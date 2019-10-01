//
//  StateView.swift
//  DataFlowSample
//  
//  Created by maeda.tasuku on 2019/10/01
//  Copyright © 2019 Classmethod. All rights reserved.
//

import SwiftUI

struct StateSampleView: View {
    @State private var tapCount: Int = 0
    
    var body: some View {
        VStack {
            
            Text("Tap count \(tapCount)")
                .padding(.bottom, 20)
            
            Button(action: {
                self.tapCount += 1
            }, label: {
                Text("Count up!")
            })
        }
    }
}

//struct StateView_Previews: PreviewProvider {
//    static var previews: some View {
//        StateView()
//    }
//}
