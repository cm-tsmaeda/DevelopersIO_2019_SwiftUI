//
//  CakeRow.swift
//  HelloSwiftUI
//  
//  Created by maeda.tasuku on 2019/09/30
//  Copyright © 2019 Classmethod. All rights reserved.
//

import SwiftUI

struct CakeRow: View {
    var cake: Cake
    
    func listBackground(cake: Cake) -> Color? {
        if cake.rank == 1 {
            return Color(hue: 42 / 360, saturation: 0.13, brightness: 1.0)
        }
        return Color.white
    }
    
    var body: some View {
        let detailView = CakeDetailView(
            cake: cake,
            backgroundColor: listBackground(cake: cake)!
        )
        return NavigationLink(destination: detailView) {
            HStack {
                Text("第\(cake.rank)位")
                    .frame(width: 70)
                    .padding(.leading, 20)
                
                Text("\(cake.name)")
                
                Spacer()
                
                Text("\(cake.percentageStr)%")
                    .padding(.trailing, 20)
            }
            .frame(height: 60)
        }
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
        .listRowBackground(self.listBackground(cake: cake))
    }
}

//struct CakeRow_Previews: PreviewProvider {
//    static var previews: some View {
//        CakeRow()
//    }
//}
