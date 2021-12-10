//
//  NewsItem.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 18/11/2021.
//

import SwiftUI

struct NewsItem: View {
    let index: Int
    @StateObject var selected: SelectedObject
    @StateObject var viewRouter: ViewRouter
    var body: some View {

        VStack{

                HStack{
                    Image(news[index].headline)    
                        .resizable()
                        .frame(width: 95, height: 95)
                        .cornerRadius(15)
                    VStack{
                        Text(news[index].title)
                            .font(Font.custom("Poppins-Light", size: 15 ))
                            .foregroundColor(.white)
                            .padding(.bottom,5)
                            .padding(.leading, 5)
                            .padding(.trailing, 100)
                           
                        
                        HStack{
                            Text(news[index].read)
                                .font(Font.custom("Poppins-Light", size: 12 ))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.white)
                               
                            Text(".")
                                .font(Font.custom("Poppins-ExtraBold", size: 12 ))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.white)
                               
                            Text(news[index].posted)
                                .font(Font.custom("Poppins-Light", size: 12))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.white)
                                
                            Spacer()
                        }.padding(.leading, 5)
                          
                    }
                    Text(news[index].position)
                        .font(Font.custom("Poppins-Light", size: 13 ))
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .foregroundColor(.black)
                        .clipShape(Rectangle())
                     
                        .background(Color.white)
                        .cornerRadius(10)
                        
                    
                }
                .padding(10)
  
        }.background(Color.black)
            .cornerRadius(15)
            .padding(.horizontal)
            .onTapGesture {
                withAnimation{
                    selected.currentObject  = news[index].objectee
                    viewRouter.currentPage = .page10
                }
               
            }
            
            



        
    }
}

struct NewsItem_Previews: PreviewProvider {
    static var previews: some View {
        NewsItem(index: 2, selected: SelectedObject(), viewRouter: ViewRouter())
    }
}
