//
//  SwiftUISampleView1.swift
//  UIKit_SwiftUI
//  
//  Created by maeda.tasuku on 2019/10/02
//  Copyright © 2019 Classmethod. All rights reserved.
//

import SwiftUI

struct SwiftUISampleView1: View {
    var body: some View {
        VStack {
            Text("SwiftUI View")
        }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity,
               alignment: .center)
        .background(Color.red)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SwiftUISampleView1_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISampleView1()
    }
}
