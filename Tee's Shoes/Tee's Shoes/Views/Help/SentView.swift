//
//  SentView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 22/11/2021.
//

import SwiftUI

struct SentView: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack{
            Text("Sent!")
                .font(Font.custom("Poppins-Light", size: 40 ))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                
            Image("sent")
                .resizable()
                .frame(width: .infinity, height: 356)
                .padding(.top, 30)
            Text("We Apologize for any inconveniences and promise to work on your issue as soon as we can")
                .font(Font.custom("Poppins-Light", size: 15 ))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.top, 20)
                .padding()
            Button(action: {
                withAnimation(){
                    viewRouter.currentPage = .page2
                }
            },label: {
             Text("Back To Home")
 
             
             .font(Font.custom("Poppins-Light", size: 16 ))
             .foregroundColor(.white)
             .padding()
                
             
            }).background( Color("TabHolder"))
                .cornerRadius(40)
                .padding(.top,30)
                .padding(.bottom,10)
            Spacer()
       
        } .padding(40)
            .transition(.move(edge: .trailing))
            .background(LinearGradient(gradient: Gradient (colors:[
            
            Color.black,
            Color.black,
            Color.mygray,
            
           
        ]),  startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea())
    }
}

struct SentView_Previews: PreviewProvider {
    static var previews: some View {
        SentView(viewRouter: ViewRouter())
    }
}
