//
//  Cake.swift
//  HelloSwiftUI
//  
//  Created by maeda.tasuku on 2019/09/30
//  Copyright © 2019 Classmethod. All rights reserved.
//

import Foundation

struct Cake: Identifiable, Decodable {
    var id: String
    var rank: Int
    var name: String
    var percentage: Float
    
    var percentageStr: String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 2
        return formatter.string(from: NSNumber(value: percentage)) ?? ""
    }
}
