//
//  CheckoutView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 08/11/2021.
//

import SwiftUI

struct CheckoutView: View {
    @StateObject var viewRouter: ViewRouter
    @State private var cardno: String = ""
    @State private var expiration: String = ""
    @State private var cvv: String = ""
    
    var body: some View {
        VStack(alignment: .center, content:{
            HStack{
                BackButton3(viewRouter: viewRouter)
                Spacer()
                Text("Checkout")
                    .font(Font.custom("Poppins-Light", size: 18 ))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, 30)
                Spacer()
                
            }.padding(.top, 10)
            
            ZStack{
                
                Image("visa")
                    .resizable()
                    .frame(width: 300, height: 210, alignment: .trailing)
                    .foregroundColor(.white)
                Text(cardno)
                    .font(Font.custom("BankGothic", size: 14 ))
                    .foregroundColor(Color("cardColor"))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 45)
                    .padding(.trailing,75)
            }
            ScrollView(.vertical, showsIndicators: false){
                contactInfo()
             
                 TextField("", text: $cardno)
                     .padding()
                     .placeholder(when: cardno.isEmpty) {
                 Text("Card Number")
                     }
                     .font(Font.custom("Poppins-Light", size: 15 ))
                     .foregroundColor(.black)
                     .background(Color.white)
                     .cornerRadius(20)
                     .padding(.horizontal,15)
             HStack{
                 TextField("", text: $expiration)
                     .padding()
                     .placeholder(when: expiration.isEmpty) {
                         Text("MM/YY")
                     }
                     .font(Font.custom("Poppins-Light", size: 15 ))
                     .foregroundColor(.black)
                     .background(Color.white)
                     .cornerRadius(20)
                     .padding(.horizontal,0)
                 TextField("", text: $cvv)
                     .padding()
                     .placeholder(when: cvv.isEmpty) {
                         Text("CVV")
                     }
                     .font(Font.custom("Poppins-Light", size: 15 ))
                     .foregroundColor(.black)
                     .background(Color.white)
                     .cornerRadius(20)
                     .padding(.horizontal,0)
                 }.padding(.horizontal,15)
             
            }
            
            Button(action: {
                withAnimation(){
                    viewRouter.currentPage = .page8
                }
            },label: {
             Text("Pay")
 
             
             .font(Font.custom("Poppins-Light", size: 16 ))
             .foregroundColor(.white)
             .padding(.vertical, 15)
             .padding(.horizontal, 160)
                
             
            }).background( Color("TabHolder"))
                .cornerRadius(40)
                .padding(.top,10)
                .padding(.bottom,10)
              
        }).padding()
            .ignoresSafeArea()
            .transition(.move(edge: .trailing))
            .background(LinearGradient(gradient: Gradient (colors:[
            
            Color.black,
            Color.black,
            Color.mygray,
            
           
        ]),  startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea())
    }
}
struct contactInfo: View{
    @State private var address: String = ""
    @State private var country: String = ""
    @State private var city: String = ""
    @State private var box: String = ""
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    var body: some View{
        VStack(alignment: .leading, content: {
            Text("Address")
                .font(Font.custom("Poppins-Light", size: 16 ))
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .padding(.top,5)
                .padding(.leading, 20)
        
            TextField("", text: $address)
                .padding()
                .placeholder(when: address.isEmpty) {
            Text("E.g  Mikocheni, Dar Es Salaam")
            }
                .font(Font.custom("Poppins-Light", size: 15 ))
                .foregroundColor(.black)
                .background(Color.white)
                .cornerRadius(20)
                .padding(.horizontal,15)
            HStack{
                TextField("", text: $city)
                    .padding()
                    .placeholder(when: city.isEmpty) {
                        Text("City")
                    }
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(.horizontal,0)
                TextField("", text: $country)
                    .padding()
                    .placeholder(when: country.isEmpty) {
                        Text("Country")
                    }
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(.horizontal,0)
                TextField("", text: $box)
                    .padding()
                    .placeholder(when: box.isEmpty) {
                        Text("P.O BOX")
                    }
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(.horizontal,0)
            }.padding(.horizontal,15)
                Text("Contact")
                    .font(Font.custom("Poppins-Light", size: 16 ))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.top,5)
                    .padding(.leading, 20)
                TextField("", text: $name)
                    .padding()
                    .placeholder(when: name.isEmpty) {
                    Text("Full Name")
                    }
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(.horizontal,15)
                TextField("", text: $email)
                    .padding()
                    .placeholder(when: email.isEmpty) {
                        Text("Email")
                    }
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(.horizontal,15)
            
                Text("Card Details")
                    .font(Font.custom("Poppins-Light", size: 16 ))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.top,5)
                    .padding(.leading, 20)
        })
    }
}
struct BackButton3: View{
    @StateObject var viewRouter: ViewRouter
    var body: some View{
        VStack(alignment: .leading, content: {
        Button(action: {
            withAnimation(){
                viewRouter.currentPage = .page2
            }
        }, label: {
            Image(systemName: "chevron.backward")
                .foregroundColor(Color.white)
                .frame(width: 15, height: 15)
        })
        })
    
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(viewRouter: ViewRouter())
    }
}
