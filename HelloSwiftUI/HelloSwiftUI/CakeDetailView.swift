//
//  CakeDetailView.swift
//  HelloSwiftUI
//  
//  Created by maeda.tasuku on 2019/10/01
//  Copyright © 2019 Classmethod. All rights reserved.
//

import SwiftUI

struct CakeDetailView: View {
    var cake: Cake
    var backgroundColor: Color
    
    var body: some View {
        VStack {
            Text("第 \(cake.rank) 位")
                .font(Font.system(size: 21))
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 2, trailing: 0))
            
            Text("\(cake.name)")
                .font(Font.system(size: 33))
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
            
            CakePercentageBarChart(percentage: cake.percentage)
                .padding(.leading, 30)
                .padding(.trailing, 30)
                .frame(height: 50)
            
            Text("\(cake.percentageStr) %")
                .font(Font.system(size: 24))
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(backgroundColor.edgesIgnoringSafeArea(.all))
    }
}

//struct CakeDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        CakeDetailView()
//    }
//}
