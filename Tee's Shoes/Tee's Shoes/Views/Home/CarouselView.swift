//
//  CarouselView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 03/11/2021.
//

import SwiftUI

struct CarouselView: View {
    let index: Int
    var body: some View {
        ZStack{
            Image(sliders[index].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:.infinity)
                .cornerRadius(50)
            Text(sliders[index].title)
                .font(Font.custom("Poppins-ExtraBold", size: 36 ))
                .multilineTextAlignment(.center)
                .alignmentGuide(.bottom) { d in d[.bottom] + 8 }
                
            
            

           
        }.foregroundColor(.white)
            .padding(20)
        
        
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView(index:0)
    }
}
