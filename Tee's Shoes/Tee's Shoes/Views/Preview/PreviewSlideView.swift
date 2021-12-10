//
//  PreviewSlideView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 05/11/2021.
//

import SwiftUI

struct PreviewSlideView: View {
    @Binding var selection: Int
    var body: some View {
        TabView(selection: $selection){
            ForEach(previews.indices, id: \.self) {
                index in
                VStack{
                    PreviewCarousel(index: index)
                }
            }
            
            
        }.tabViewStyle(PageTabViewStyle())
    }
}

struct PreviewSlideView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewSlideView(selection: Binding.constant(0))
    }
}
