//
//  CarouselSlideView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 03/11/2021.
//

import SwiftUI

struct CarouselSlideView: View {
    @Binding var selection: Int
    var body: some View {
        TabView(selection: $selection){
            ForEach(sliders.indices, id: \.self) {
                index in
                VStack{
                    CarouselView(index: index)
                }
            }
            
            
        }.tabViewStyle(PageTabViewStyle())
}
}

struct CarouselSlideView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselSlideView(selection: Binding.constant(0))
    }
}
