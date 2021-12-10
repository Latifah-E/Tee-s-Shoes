//
//  GradientView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 29/10/2021.
//

import SwiftUI
extension Color {
    static let mygray = Color(red: 98 / 255, green: 100 / 255, blue: 103 / 255)
}
struct GradientView: View {
    var body: some View {
        LinearGradient(gradient: Gradient (colors:[
            
            Color.black,
            Color.mygray,
            
           
        ]),  startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
