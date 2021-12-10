//
//  ComplainView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 22/11/2021.
//

import SwiftUI

struct ComplainView: View {
    @StateObject var viewRouter: ViewRouter
    @State private var fname: String = ""
    @State private var lname: String = ""
    @State private var city: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var head: String = ""
    @State private var content: String = "   Subject Content"
    var body: some View {
        VStack{
            HStack{
                BackButton(viewRouter: viewRouter)
                 
                Spacer()
                Text("Share Your Concerns")
                    .font(Font.custom("Poppins-Light", size: 16 ))
                    .foregroundColor(.white)
                    .padding(.bottom, 0)
                    .padding(.leading, -10)
                Spacer()
               
                   
            }.padding(.top, 0)
            .padding(.leading, 10)
            Image("complain")
                .resizable()
                .frame(width: 250, height: 220)
                .padding(.top, 30)
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    VStack{
                        HStack{
                            Text("Personal Information")
                                .font(Font.custom("Poppins-Light", size: 16 ))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .padding(.top,5)
                                .padding(.leading, 30)
                            Spacer()
                        }
                        
                        HStack{
                            TextField("", text: $fname)
                                .padding()
                                .placeholder(when: fname.isEmpty) {
                                    Text("First Name")
                                }
                                .font(Font.custom("Poppins-Light", size: 15 ))
                                .foregroundColor(.black)
                                .background(Color.white)
                                .cornerRadius(20)
                                .padding(.horizontal,0)
                            TextField("", text: $lname)
                                .padding()
                                .placeholder(when: lname.isEmpty) {
                                    Text("Last Name")
                                }
                                .font(Font.custom("Poppins-Light", size: 15 ))
                                .foregroundColor(.black)
                                .background(Color.white)
                                .cornerRadius(20)
                                .padding(.horizontal,0)
                            }.padding(.horizontal,25)
                        TextField("", text: $city)
                            .padding()
                            .placeholder(when: city.isEmpty) {
                        Text("City")
                            }
                            .font(Font.custom("Poppins-Light", size: 15 ))
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding(.horizontal,25)
                    }
                    VStack{
                        HStack{
                            Text("Contact")
                                .font(Font.custom("Poppins-Light", size: 16 ))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .padding(.top,5)
                                .padding(.leading, 30)
                            Spacer()
                        }
                        
                        TextField("", text: $email)
                            .padding()
                            .placeholder(when: email.isEmpty) {
                        Text("Email")
                            }
                            .font(Font.custom("Poppins-Light", size: 15 ))
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding(.horizontal,25)
                        TextField("", text: $phone)
                            .padding()
                            .placeholder(when: phone.isEmpty) {
                        Text("Phone")
                            }
                            .font(Font.custom("Poppins-Light", size: 15 ))
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding(.horizontal,25)
                    }
                    VStack{
                        HStack{
                            Text("Subject")
                                .font(Font.custom("Poppins-Light", size: 16 ))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .padding(.top,5)
                                .padding(.leading, 30)
                            Spacer()
                        }
                        
                        TextField("", text: $head)
                            .padding()
                            .placeholder(when: head.isEmpty) {
                        Text("Subject Heading")
                            }
                            .font(Font.custom("Poppins-Light", size: 15 ))
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding(.horizontal,25)
                        
                        TextEditor(text: $content)
                            .background(Color.white)
                            .cornerRadius(20)
                            .foregroundColor(.gray)
                            .font(Font.custom("Poppins-LightItalic", size: 15 ))
                            .foregroundColor(.black)
                            .padding(.horizontal, 25)
                            .lineSpacing(5)
                            .frame(width: .infinity, height: 150)
                        
                        
                    }
                }
               
               
            }.padding(.top, 30)
            Button(action: {
                withAnimation(){
                    viewRouter.currentPage = .page12
                }
            },label: {
             Text("SEND")
 
             
             .font(Font.custom("Poppins-Light", size: 16 ))
             .foregroundColor(.white)
             .padding(.vertical, 15)
             .padding(.horizontal, 160)
                
             
            }).background( Color("TabHolder"))
                .cornerRadius(40)
                .padding(.top,10)
                .padding(.bottom,10)
            
        }.transition(.move(edge: .trailing))
            .background(LinearGradient(gradient: Gradient (colors:[
            
            Color.black,
            Color.black,
            Color.mygray,
            
           
        ]),  startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea())
    }
}

struct ComplainView_Previews: PreviewProvider {
    static var previews: some View {
        ComplainView(viewRouter: ViewRouter())
    }
}
