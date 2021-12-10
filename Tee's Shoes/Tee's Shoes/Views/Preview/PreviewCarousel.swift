//
//  PreviewCarousel.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 05/11/2021.
//

import SwiftUI

struct PreviewCarousel: View {
    let index: Int
    var body: some View {
        
            Image(previews[index].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:330)
         
                
            
            

           
       
    }
}

struct PreviewCarousel_Previews: PreviewProvider {
    static var previews: some View {
        PreviewCarousel(index:0)
    }
}
