//
//  NewsMain.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 18/11/2021.
//

import SwiftUI

struct NewsMain: View {
    @State private var selection = 0
    @StateObject var viewRouter: ViewRouter
    @StateObject var selected: SelectedObject
    var body: some View {
        VStack{
            Text("What's")
                .font(Font.custom("Poppins-ExtraBold", size: 36 ))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding(.top)
            
            Text("Poppin!")
                .font(Font.custom("Poppins-Light", size: 15 ))
                .foregroundColor(.white)
                .padding(.bottom, 0)
            
            NewsSlider(selection:$selection)
            
            ScrollView(.vertical, showsIndicators: false){
                ForEach(news.indices, id: \.self) {
                    index in
                    VStack{
                        NewsItem(index: index, selected: selected, viewRouter: viewRouter)
                        
                    }
                }
            }
            
        }
          
    }
}

struct NewsMain_Previews: PreviewProvider {
    static var previews: some View {
        NewsMain(viewRouter: ViewRouter(), selected: SelectedObject())
    }
}
