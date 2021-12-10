//
//  KidsView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 04/11/2021.
//

import SwiftUI

struct KidsView: View {
    @State private var selection = 0
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack(content: {
            VStack(){
                HStack{
                    BackButton(viewRouter: viewRouter)
                     
                    Spacer()
                   
                       
                }.padding(.top, 0)
                    .padding(.leading, 10)
                Text("Kids")
                    .font(Font.custom("Poppins-ExtraBold", size: 36 ))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.top)
                Text("Category")
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                
                Text("LATEST")
                    .font(Font.custom("Poppins-Light", size: 18 ))
                    .foregroundColor(.white)
                    .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false){
                    KidsCardView(viewRouter: viewRouter)
                }
                Text("TRENDING")
                    .font(Font.custom("Poppins-Light", size: 18 ))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 14.0)
                
                ScrollView(.horizontal, showsIndicators: false){
                   KidsCardView(viewRouter: viewRouter)
                }
                Spacer()
                
            }
            
            
            
        }).transition(.move(edge: .trailing))
            .background(LinearGradient(gradient: Gradient (colors:[
            
            Color.black,
            Color.black,
            Color.mygray,
            
           
        ]),  startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea())
    }
}
struct KidsCardView : View{
    @StateObject var viewRouter: ViewRouter
    @State var index = 0
    var body : some View{
        
        HStack(spacing: 10){
            VStack(spacing: 8){
                
                Image("kids1")
                    .resizable()
                    .frame(width: 83, height: 60)
                Text("Air Jordans")
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor( self.index == 0 ? .white : .white)
                Text("$100.99")
                    .font(Font.custom("Poppins-Light", size: 13 ))
                    .foregroundColor( self.index == 0 ? .white : .white)
                PreviewButton(viewRouter: viewRouter)
            }.padding(.horizontal, 20)
                .padding(.vertical, 30)
                .background(self.index == 0 ? Color("TabHolder") : Color("TabHolder"))
                .clipShape(Rectangle())
                .onTapGesture {
                    self.index = 0
                }
                .cornerRadius(20)
            
            VStack(spacing: 8){
                
                Image("kids2")
                    .resizable()
                    .frame(width: 83, height: 60)
                Text("Air Jordans")
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor( self.index == 1 ? .white : .white)
                Text("$100.99")
                    .font(Font.custom("Poppins-Light", size: 13 ))
                    .foregroundColor( self.index == 1 ? .white : .white)
                PreviewButton(viewRouter: viewRouter)
            }.padding(.horizontal, 20)
                .padding(.vertical, 30)
                .background(self.index == 1 ? Color("TabHolder") : Color("TabHolder"))
                .clipShape(Rectangle())
                .onTapGesture {
                    self.index = 1
                }
                .cornerRadius(20)
            
            VStack(spacing: 8){
                
                Image("kids3")
                    .resizable()
                    .frame(width: 83, height: 60)
                Text("Air Jordans")
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor( self.index == 2 ? .white : .white)
                Text("$100.99")
                    .font(Font.custom("Poppins-Light", size: 13 ))
                    .foregroundColor( self.index == 2 ? .white : .white)
                PreviewButton(viewRouter: viewRouter)
            }.padding(.horizontal, 20)
                .padding(.vertical, 30)
                .background(self.index == 2 ? Color("TabHolder") : Color("TabHolder"))
                .clipShape(Rectangle())
                .onTapGesture {
                    self.index = 2
                }
                .cornerRadius(20)
            VStack(spacing: 8){
                
                Image("kids4")
                    .resizable()
                    .frame(width: 83, height: 60)
                Text("Air Jordans")
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor( self.index == 3 ? .white : .white)
                Text("$100.99")
                    .font(Font.custom("Poppins-Light", size: 13 ))
                    .foregroundColor( self.index == 3 ? .white : .white)
                PreviewButton(viewRouter: viewRouter)
            }.padding(.horizontal, 20)
                .padding(.vertical, 30)
                .background(self.index == 3 ? Color("TabHolder") : Color("TabHolder"))
                .clipShape(Rectangle())
                .onTapGesture {
                    self.index = 3
                }
                .cornerRadius(20)
            
        }.padding(.horizontal, 0)
    }
}

struct KidsView_Previews: PreviewProvider {
    static var previews: some View {
        KidsView(viewRouter: ViewRouter())
    }
}
