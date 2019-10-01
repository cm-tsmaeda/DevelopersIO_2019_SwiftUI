//
//  ContentView.swift
//  HelloSwiftUI
//  
//  Created by maeda.tasuku on 2019/09/30
//  Copyright © 2019 Classmethod. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var cakes: [Cake]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(cakes, id: \.id) { cake in
                    CakeRow(cake: cake)
                }
            }
            .navigationBarTitle(
                Text("最も好きなケーキの種類はなに?"),
                displayMode: .inline
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let cakeLoader = CakeSurveyLoader()
        let cakes: [Cake] = cakeLoader.load()!
        return ContentView(cakes: cakes)
    }
}
