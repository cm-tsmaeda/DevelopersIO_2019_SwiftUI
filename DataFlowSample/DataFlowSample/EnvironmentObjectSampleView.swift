//
//  EnvironmentObjectSampleView.swift
//  DataFlowSample
//  
//  Created by maeda.tasuku on 2019/10/01
//  Copyright © 2019 Classmethod. All rights reserved.
//

import SwiftUI
import Combine

class UserSettings: ObservableObject {
    @Published var tapCount: Int = 0
}

struct EnvironmentObjectSampleView: View {
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("in Person: \(userSettings.tapCount)")
            
            Button(action: {
                self.userSettings.tapCount += 1
            }, label: {
                Text("Count Up")
            })
            .foregroundColor(Color.yellow)
            
            EOSChildView()
        }
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
        .padding(20)
        .background(Color.blue)
    }
}

struct EOSChildView: View {
    var body: some View {
        VStack {
            Text("in Child")
            
            EOSGrandChildView()
        }
        .padding(20)
        .background(Color.red)
    }
}

struct EOSGrandChildView: View {
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("in Grandchild \(userSettings.tapCount)")
            
            Button(action: {
                self.userSettings.tapCount += 1
            }, label: {
                Text("Count Up")
            })
        }
        .padding(20)
        .background(Color.yellow)
    }
}


//struct EnvironmentObjectSampleView_Previews: PreviewProvider {
//    static var previews: some View {
//        EnvironmentObjectSampleView()
//    }
//}
