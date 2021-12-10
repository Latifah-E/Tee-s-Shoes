//
//  HomeView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 02/11/2021.
//

import SwiftUI

struct HomeView: View {
    @State var selectedTab = "house"
    @State private var selection = 0
    @StateObject var viewRouter: ViewRouter
    var body: some View {
     
            VStack(content: {
                CategoryReusable(viewRouter: viewRouter)
                    .padding(.bottom, 30)
                ZStack{
                    CarouselSlideView(selection:$selection)
                    CarouselButtons(selection:$selection)
                }.padding(.bottom, 45)
                VStack{
                    Text("SHOP")
                        .font(Font.custom("Poppins-Bold", size: 18 ))
                        .foregroundColor(.white)
                        .padding(10)
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                
                    ScrollView(.horizontal, showsIndicators: false){
                        CardView(viewRouter: viewRouter)
                    }.padding(.bottom, 25)
                    
                    
                }
                
                
                
                
            })
               
      
     
        
    }
    
}

struct CategoryReusable: View {
    @State var value = ""
    @StateObject var viewRouter: ViewRouter
    var placeholder = "Category"
    var dropDownList = ["Mens", "Women", "Kids"]
    var body: some View {
        Menu {
            Button(action:{
                withAnimation(){
                    viewRouter.currentPage = .page3
                }
            }, label: {
                Text("Men")
                    .foregroundColor(.black)
                    .font(Font.custom("Poppins-Light", size: 17 ))
            })
            Button(action:{
                withAnimation(){
                    viewRouter.currentPage = .page5
                }
            }, label: {
                Text("Women")
                    .foregroundColor(.black)
                    .font(Font.custom("Poppins-Light", size: 17 ))
            })
            Button(action:{
                withAnimation(){
                    viewRouter.currentPage = .page4
                }
            }, label: {
                Text("Kids")
                    .foregroundColor(.black)
                    .font(Font.custom("Poppins-Light", size: 17 ))
            })
               } label: {
                   VStack(spacing: 5){
                       HStack{
                           Text("Category")
                               .foregroundColor(.white)
                               .font(Font.custom("Poppins-Light", size: 17 ))

                           Spacer()
                           Image(systemName: "chevron.down")
                               .foregroundColor(Color.white)
                               .font(Font.custom("Poppins-Light", size: 17 ))
                       }
                       .padding(.horizontal)
                       .padding(20)
                       .background(Color("TabHolder"))
                       .frame(width: 230, height: 55)
                       .cornerRadius(30)
                   }
               }
    }
       }

struct CardView : View{
    @State var index = 0
    @StateObject var viewRouter: ViewRouter
    var body : some View{
        
        HStack(spacing: 15){
            VStack(spacing: 8){
                
                Image("cat1")
                    .resizable()
                    .frame(width: 83, height: 77)
                Button(action : {
                    withAnimation(){
                        viewRouter.currentPage = .page3
                    }
                }, label: {
                    Text("Men")
                        .font(Font.custom("Poppins-Light", size: 18 ))
                        .foregroundColor( self.index == 0 ? .white : .white)
                })
                
            }.padding(.horizontal, 10)
                .padding(.vertical, 30)
                .background(self.index == 0 ? Color("TabHolder") : Color("TabHolder"))
                .clipShape(Rectangle())
                .onTapGesture {
                    self.index = 0
                }
                .cornerRadius(20)
            
            VStack(spacing: 5){
                
                Image("cat2")
                    .resizable()
                    .frame(width: 83, height: 83)
                Button(action : {
                    withAnimation(){
                        viewRouter.currentPage = .page4
                    }
                }, label: {
                        Text("Kids")
                            .font(Font.custom("Poppins-Light", size: 18 ))
                            .foregroundColor( self.index == 1 ? .white : .white)
                })
            }.padding(.horizontal, 9)
                .padding(.vertical, 30)
                .background(self.index == 1 ? Color("TabHolder") : Color("TabHolder"))
                .clipShape(Rectangle())
                .onTapGesture {
                    self.index = 1
                }
                .cornerRadius(20)
            
            VStack(spacing: 5){
                
                Image("cat3")
                    .resizable()
                    .frame(width: 85, height: 83)
                Button(action : {
                    withAnimation(){
                        viewRouter.currentPage = .page5
                    }
                }, label: {
                        Text("Women")
                            .font(Font.custom("Poppins-Light", size: 18 ))
                            .foregroundColor( self.index == 2 ? .white : .white)
                })
            }.padding(.horizontal, 8)
                .padding(.vertical, 30)
                .background(self.index == 2 ? Color("TabHolder") : Color("TabHolder"))
                .clipShape(Rectangle())
                .onTapGesture {
                    self.index = 2
                }
                .cornerRadius(20)
            
        }.padding(.horizontal, 39)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        
            HomeView(viewRouter: ViewRouter())
    }
}
