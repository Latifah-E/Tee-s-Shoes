//
//  HelpMain.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 19/11/2021.
//

import SwiftUI

struct HelpMain: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack{
            Text("Need Help?")
                .font(Font.custom("Poppins-ExtraBold", size: 36 ))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding(.top)
            
            Text("Tell Us How We Can Help")
                .font(Font.custom("Poppins-Light", size: 15 ))
                .foregroundColor(.white)
                .padding(.bottom, 10)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 25){
                    HStack{
                        Image(systemName: "hand.thumbsdown.circle.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color("TabHolder"))
                            .padding(10)
                            .background(Color.black)
                            .clipShape(Rectangle())
                            .cornerRadius(10)
                        
                        VStack{
                            HStack{
                                Text("Got Complaints?")
                                    .font(Font.custom("Poppins-Light", size: 15 ))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.bottom, 0)
                                Spacer()
                            }
                            HStack{
                                Text("Send Us Your Complaints And Queries")
                                    .font(Font.custom("Poppins-Light", size: 12 ))
                                    .foregroundColor(.black)
                                    .padding(.bottom, 0)
                                Spacer()
                            }
                            
                        }
                            
                    } .padding(10)
                        .background(Color("TabHolder"))
                        .cornerRadius(10)
                        .onTapGesture {
                            withAnimation{
                                viewRouter.currentPage = .page11
                            }
                        }
                    HStack{
                        Image(systemName: "doc.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color("TabHolder"))
                            .padding(10)
                            .background(Color.black)
                            .clipShape(Rectangle())
                            .cornerRadius(10)
                        
                        VStack{
                            HStack{
                                Text("Terms And Conditions")
                                    .font(Font.custom("Poppins-Light", size: 15 ))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.bottom, 0)
                                Spacer()
                            }
                            HStack{
                                Text("Go through our tnc’s")
                                    .font(Font.custom("Poppins-Light", size: 12 ))
                                    .foregroundColor(.black)
                                    .padding(.bottom, 0)
                                Spacer()
                            }
                            
                        }
                            
                    } .padding(10)
                        .background(Color("TabHolder"))
                        .cornerRadius(10)
                        .onTapGesture {
                            withAnimation{
                                viewRouter.currentPage = .page13
                            }
                        }
                    HStack{
                        Image(systemName: "phone.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color("TabHolder"))
                            .padding(10)
                            .background(Color.black)
                            .clipShape(Rectangle())
                            .cornerRadius(10)
                        
                        VStack{
                            HStack{
                                Text("Contact Us")
                                    .font(Font.custom("Poppins-Light", size: 15 ))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.bottom, 0)
                                Spacer()
                            }
                            HStack{
                                Text("Contact Us Through Our Listed Locations")
                                    .font(Font.custom("Poppins-Light", size: 12 ))
                                    .foregroundColor(.black)
                                    .padding(.bottom, 0)
                                Spacer()
                            }
                            
                        }
                            
                    } .padding(10)
                        .background(Color("TabHolder"))
                        .cornerRadius(10)
                        .onTapGesture {
                            withAnimation{
                                viewRouter.currentPage = .page14
                            }
                        }
                    
                    HStack{
                        Image(systemName: "questionmark.app.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color("TabHolder"))
                            .padding(10)
                            .background(Color.black)
                            .clipShape(Rectangle())
                            .cornerRadius(10)
                        
                        VStack{
                            HStack{
                                Text("FAQ’s")
                                    .font(Font.custom("Poppins-Light", size: 15 ))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.bottom, 0)
                                Spacer()
                            }
                            HStack{
                                Text("Frequently Asked Questions")
                                    .font(Font.custom("Poppins-Light", size: 12 ))
                                    .foregroundColor(.black)
                                    .padding(.bottom, 0)
                                Spacer()
                            }
                            
                        }
                            
                    } .padding(10)
                        .background(Color("TabHolder"))
                        .cornerRadius(10)
                        .onTapGesture {
                            withAnimation{
                                viewRouter.currentPage = .page16
                            }
                        }
                    
                    HStack{
                        Image(systemName: "lock.square")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color("TabHolder"))
                            .padding(10)
                            .background(Color.black)
                            .clipShape(Rectangle())
                            .cornerRadius(10)
                        
                        VStack{
                            HStack{
                                Text("Privacy Policy")
                                    .font(Font.custom("Poppins-Light", size: 15 ))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.bottom, 0)
                                Spacer()
                            }
                            HStack{
                                Text("See how your data is protected")
                                    .font(Font.custom("Poppins-Light", size: 12 ))
                                    .foregroundColor(.black)
                                    .padding(.bottom, 0)
                                Spacer()
                            }
                            
                        }
                            
                    } .padding(10)
                        .background(Color("TabHolder"))
                        .cornerRadius(10)
                        .onTapGesture {
                            withAnimation{
                                viewRouter.currentPage = .page15
                            }
                        }
                }
            }.padding(.top, 30)
                Spacer()
            
        }
        
        .padding(.horizontal, 35)
            .padding(.vertical)
         
    }
}

struct HelpMain_Previews: PreviewProvider {
    static var previews: some View {
        HelpMain(viewRouter: ViewRouter())
    }
}
