//
//  ContentView.swift
//  DataFlowSample
//  
//  Created by maeda.tasuku on 2019/10/01
//  Copyright © 2019 Classmethod. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("hello 1")
                Text("hello 2")
                Text("hello 3")
            }.navigationBarTitle(
                Text("Data Flow"),
                displayMode: .large
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
