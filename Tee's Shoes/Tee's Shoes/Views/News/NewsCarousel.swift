//
//  NewsCarousel.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 18/11/2021.
//

import SwiftUI

struct NewsCarousel: View {
    let index: Int
    var body: some View {
        ZStack{
            Image(news[index].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:.infinity)
                .cornerRadius(20)
            Text(news[index].title)
                .font(Font.custom("Poppins-ExtraBold", size: 30 ))
                .multilineTextAlignment(.leading)
                .padding(.bottom, 10)
                .padding(.top, 50)
                .padding(.trailing, 60)
            HStack{
                Text(news[index].read)
                    .font(Font.custom("Poppins-Light", size: 18 ))
                    .multilineTextAlignment(.leading)
                   
                Text(".")
                    .font(Font.custom("Poppins-ExtraBold", size: 18 ))
                    .multilineTextAlignment(.leading)
                   
                Text(news[index].posted)
                    .font(Font.custom("Poppins-Light", size: 18 ))
                    .multilineTextAlignment(.leading)
                    
                Spacer()
            }.padding(.bottom, 10)
                .padding(.top, 170)
                .padding(.leading)
           
                
            
            

           
        }.foregroundColor(.white)
            .padding()
    }
}

struct NewsCarousel_Previews: PreviewProvider {
    static var previews: some View {
        NewsCarousel(index:1)
    }
}
