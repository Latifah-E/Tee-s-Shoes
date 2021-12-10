//
//  tncView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 22/11/2021.
//

import SwiftUI

struct tncView: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack{
            HStack{
                BackButton(viewRouter: viewRouter)
                 
                Spacer()
                Text("Terms And Conditions")
                    .font(Font.custom("Poppins-Light", size: 16 ))
                    .foregroundColor(.white)
                    .padding(.bottom, 0)
                    .padding(.leading, -10)
                Spacer()
               
                   
            }.padding(.top, 0)
            Image("tnc")
                .resizable()
                .frame(width: 250, height: 220)
                .padding(.top, 30)
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    HStack{
                        Text("Last Updated: 20th Jan 2021")
                            .font(Font.custom("Poppins-LightItalic", size: 14 ))
                            .foregroundColor(.white)
                            .padding(.bottom, 0)
                            .padding(.leading, 25)
                            .padding(.trailing, 25)
                        Spacer()
                    }
                    VStack{
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ")
                            .font(Font.custom("Poppins-Light", size: 13 ))
                            .foregroundColor(.white)
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .padding(.leading, 25)
                            .padding(.trailing, 25)
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ")
                            .font(Font.custom("Poppins-Light", size: 13 ))
                            .foregroundColor(.white)
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .padding(.leading, 25)
                            .padding(.trailing, 25)
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ")
                            .font(Font.custom("Poppins-Light", size: 13 ))
                            .foregroundColor(.white)
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .padding(.leading, 25)
                            .padding(.trailing, 25)
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ")
                            .font(Font.custom("Poppins-Light", size: 13 ))
                            .foregroundColor(.white)
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .padding(.leading, 25)
                            .padding(.trailing, 25)
                    }
                    
                
                }
            }.padding(.top, 20)
            
            Spacer()
        }.transition(.move(edge: .trailing))
            .background(LinearGradient(gradient: Gradient (colors:[
            
            Color.black,
            Color.black,
            Color.mygray,
            
           
        ]),  startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea())
    }
}

struct tncView_Previews: PreviewProvider {
    static var previews: some View {
        tncView(viewRouter: ViewRouter())
    }
}
