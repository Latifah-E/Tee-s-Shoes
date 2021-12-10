//
//  FAQDetails.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 22/11/2021.
//

import SwiftUI

struct FAQDetails: View {
    @StateObject var viewRouter: ViewRouter
    @State private var showPopUp: Bool = false
    @State var title: String = "How Can I Pay?"
    @State var par1: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore "
    @State var par2: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore "
    var body: some View {
        ZStack{
            
 
        VStack{
            HStack{
                BackButton(viewRouter: viewRouter)
                 
                Spacer()
                Text("FAQ")
                    .font(Font.custom("Poppins-Light", size: 16 ))
                    .foregroundColor(.white)
                    .padding(.bottom, 0)
                    .padding(.leading, -10)
                
                Spacer()
                
                   
            }.padding(.top, 0)
            ScrollView(.vertical, showsIndicators: false) {
                Text(self.title)
                    .font(Font.custom("Poppins-Extrabold", size: 28 ))
                    .foregroundColor(.white)
                    .padding(.bottom, 0)
                    .padding(.top, 30)
                
                Text(self.par1)
                    .font(Font.custom("Poppins-Light", size: 14 ))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 0)
                    .padding(.top, 30)
                    .padding(.horizontal, 30)
                Text(self.par2)
                    .font(Font.custom("Poppins-Light", size: 14 ))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 0)
                    .padding(.top, 20)
                    .padding(.horizontal, 30)
            }
            Text("Was this answer helpful?")
                .font(Font.custom("Poppins-Light", size: 18 ))
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 10)
                .padding(.top, 20)
                .padding(.horizontal, 30)
            HStack{
                Button(action: {
                    withAnimation(.linear(duration: 0.3)) {
                        showPopUp.toggle()
                    }
                }, label: {
                    Text("YES")
                        .font(Font.custom("Poppins-Thin", size: 18 ))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 5)
                        .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 1)
                            )
                })
                Spacer()
                Button(action: {
                    withAnimation(.linear(duration: 0.3)) {
                        showPopUp.toggle()
                    }
                }, label: {
                    Text("NO")
                        .font(Font.custom("Poppins-Thin", size: 18 ))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 5)
                        .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 1)
                            )
                })
            }.padding(.horizontal, 90)
            
           
            
            Spacer()
        }.transition(.move(edge: .trailing))
            .background(LinearGradient(gradient: Gradient (colors:[
            
            Color.black,
            Color.black,
            Color.mygray,
            
           
        ]),  startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea())
            YesPopup(show: $showPopUp)
        }
       
    }
}

struct FAQDetails_Previews: PreviewProvider {
    static var previews: some View {
        FAQDetails(viewRouter: ViewRouter())
    }
}
