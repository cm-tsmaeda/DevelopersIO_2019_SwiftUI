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
                
                NavigationLink(destination: StateSampleView()) {
                    Text("State")
                }
                
                NavigationLink(destination: BindingSampleView()) {
                    Text("Binding")
                }
                
                NavigationLink(
                    destination: ObservedObjectSampleView(company: Company())
                ) {
                    Text("ObservedObject")
                }
                
                NavigationLink(
                    destination: EnvironmentObjectSampleView()
                                    .environmentObject(UserSettings())
                ) {
                    Text("EnvironmentObject")
                }
                
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
