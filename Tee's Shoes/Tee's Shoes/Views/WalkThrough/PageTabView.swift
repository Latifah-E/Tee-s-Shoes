//
//  PageTabView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 29/10/2021.
//

import SwiftUI

struct PageTabView: View {
    @Binding var selection: Int
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        TabView(selection: $selection){
            ForEach(tabs.indices, id: \.self) {
                index in
                VStack{
                    TabdetailsView(index: index, viewRouter: viewRouter)
                }
            }
            
            
        }
        .tabViewStyle(PageTabViewStyle())
        
    }
}

struct PageTabView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
        GradientView()
            PageTabView(selection: Binding.constant(0), viewRouter: ViewRouter())
        }
    }
}

