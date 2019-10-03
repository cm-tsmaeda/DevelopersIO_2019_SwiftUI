//
//  CustomTextFieldView.swift
//  UIKit_SwiftUI
//  
//  Created by maeda.tasuku on 2019/10/02
//  Copyright © 2019 Classmethod. All rights reserved.
//

import SwiftUI

struct CustomTextFieldView: UIViewRepresentable {
    @Binding var inputText:String?
    
    /// Viewを作成（初期化）
    func makeUIView(context: UIViewRepresentableContext<CustomTextFieldView>) -> UITextField {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .whileEditing
        textField.delegate = context.coordinator
        return textField
    }
    
    /// Viewを更新
    func updateUIView(_ textField: UITextField, context: Context) {
        
    }
    
    /// Coordinatorを作る
    func makeCoordinator() -> CustomTextFieldView.Coordinator {
        return Coordinator(view: self)
    }
    
    /// Coordinatorから呼び出すサンプル
    func someFunc(text: String?) {
        inputText = text
    }
    
    /// Delegateの対象
    class Coordinator: NSObject, UITextFieldDelegate {
        
        var view: CustomTextFieldView
        
        init(view: CustomTextFieldView) {
            self.view = view
        }
        
        func textFieldDidChangeSelection(_ textField: UITextField) {
            view.someFunc(text: textField.text)
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            UIApplication.shared.windows.first?.endEditing(true)
            return true
        }
    }
}
