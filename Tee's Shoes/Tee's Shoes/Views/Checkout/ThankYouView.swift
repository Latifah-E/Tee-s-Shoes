//
//  ThankYouView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 08/11/2021.
//

import SwiftUI

struct ThankYouView: View {
    
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack{
            Text("Thank You!")
                .font(Font.custom("Poppins-Light", size: 40 ))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                
            Image("confimed")
                .resizable()
                .frame(width: .infinity, height: 356)
                .padding(.top, 30)
            Text("Your Order Has Been Placed Succesfully. You will be Contacted Upon Arrival.")
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

struct ThankYouView_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouView(viewRouter: ViewRouter())
    }
}
