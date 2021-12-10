//
//  NewsSlider.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 18/11/2021.
//

import SwiftUI

struct NewsSlider: View {
    @Binding var selection: Int
    var body: some View {
        TabView(selection: $selection){
            ForEach(news.indices, id: \.self) {
                index in
                VStack{
                    NewsCarousel(index: index)
                }
            }
            
            
        }.tabViewStyle(PageTabViewStyle())
    }
}

struct NewsSlider_Previews: PreviewProvider {
    static var previews: some View {
        NewsSlider(selection: Binding.constant(0))
    }
}
