//
//  CakePercentageBarChart.swift
//  HelloSwiftUI
//  
//  Created by maeda.tasuku on 2019/10/01
//  Copyright © 2019 Classmethod. All rights reserved.
//

import SwiftUI

struct CakePercentageBarChart: View {
    var percentage: Float
    @State private var didAppear = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {

                // base
                Path { path in
                    let containerWidth: CGFloat = geometry.size.width
                    let containerHeight: CGFloat = geometry.size.height
                    path.addRect(CGRect(x: 0, y: 0, width: containerWidth, height: containerHeight))
                }.fill(Color(hue: 33 / 360.0, saturation: 0, brightness: 0.91))
                
                // base
                Path { path in
                    let containerWidth: CGFloat = geometry.size.width
                    let containerHeight: CGFloat = geometry.size.height
                    // bar
                    let ratioWidth: CGFloat = CGFloat(self.percentage / 100.0) * containerWidth
                    path.addRect(CGRect(x: 0, y: 0, width: ratioWidth, height: containerHeight))
                }
                .fill(Color(hue: 339 / 360.0, saturation: 0.62, brightness: 1.0))
                .scaleEffect(
                    x: self.didAppear ? 1.0 : 0,
                    y: 1.0,
                    anchor: .topLeading
                )
                .animation(Animation.easeOut(duration: 0.5))
            }

        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                withAnimation {
                    self.didAppear = true
                }
            }
        }
    }
}

//struct CakePercentageBarChart_Previews: PreviewProvider {
//    static var previews: some View {
//        CakePercentageBarChart()
//    }
//}
