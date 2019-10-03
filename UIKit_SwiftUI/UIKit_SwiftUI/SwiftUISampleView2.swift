//
//  SwiftUISampleView2.swift
//  UIKit_SwiftUI
//  
//  Created by maeda.tasuku on 2019/10/02
//  Copyright © 2019 Classmethod. All rights reserved.
//

import SwiftUI

struct SwiftUISampleView2: View {
    @State private var inputText:String?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Input Here")
                .padding(.leading, 20)
                .padding(.top, 20)
            
            CustomTextFieldView(inputText: $inputText)
                .frame(height: 44, alignment: .leading)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .padding(.top, 12)
            
            Text("Inputed Text: \(self.inputText ?? "")")
                .padding(.leading, 20)
                .padding(.top, 40)
            
            Spacer()
        }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity,
               alignment: .center)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SwiftUISampleView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISampleView2()
    }
}
