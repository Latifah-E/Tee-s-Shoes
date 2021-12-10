//
//  FAQView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 22/11/2021.
//

import SwiftUI

struct FAQView: View {
    @StateObject var viewRouter: ViewRouter
    @State private var searcher: String = ""
    @State var index: Int
    var body: some View {
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
            HStack{
                TextField("", text: self.$searcher)
                    .font(Font.custom("Poppins-Light", size: 13 ))
                    .placeholder2(when: searcher.isEmpty) {
                        Text("Search...").opacity(0.3)
                    }
                    .foregroundColor(.black)
                    .padding(.horizontal,0)
                    .padding(.leading, 20)
                
                .padding(.vertical, 15)
                
                Button(action: {
                    
                    withAnimation {
                        
                        self.searcher = ""
                        UIApplication.shared.dismissKeyboard()
                    }
                    
                }) {
                    
                    Image(systemName: "xmark").foregroundColor(.black)
                        
                }.padding(.trailing, 20)
                .padding(.horizontal, 0)
                .font(Font.custom("Poppins-Light", size: 12 ))
            }   .background(Color.white)
                .cornerRadius(15)
                .padding()
            
            Image("faq3")
                .resizable()
                .frame(width: .infinity, height: 240)
                .padding(.top, 30)
                .padding(.horizontal, 30)
            if self.searcher != ""{
                
                if questions.indices.filter({questions[$0].title.lowercased().contains(self.searcher.lowercased()) || questions[$0].par1.lowercased().contains(self.searcher.lowercased()) }).count == 0{
                    withAnimation{
                        Text("No Results Found..").padding(.top, 50)
                            .font(Font.custom("Poppins-Light", size: 18 ))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                    }
                    
                   
                }
                else{
                  
                        ScrollView(.vertical, showsIndicators: false) {
                        
                            
                        
                        ForEach(questions.indices.filter({questions[$0].title.lowercased().contains(self.searcher.lowercased())}),id: \.self){index in
                            
                           FAQ(index: index, viewRouter: viewRouter)
                                
                        }
                    
                        }.padding(.top, 30)
                    
                }
            }
            else{
               
                ScrollView(.vertical, showsIndicators: false) {
                    
                    ForEach(questions.indices ,id: \.self){index in
                        FAQ(index: index, viewRouter: viewRouter)
                    }
                }.padding(.top, 30)

               
            }
            
            Spacer()
            
        }.transition(.move(edge: .trailing))
            .background(LinearGradient(gradient: Gradient (colors:[
            
            Color.black,
            Color.black,
            Color.mygray,
            
           
        ]),  startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea())
    }
}
struct FAQ: View{
    let index: Int
    @StateObject var viewRouter: ViewRouter
    var body: some View{
        HStack{
            Text(questions[index].title)
                .font(Font.custom("Poppins-Light", size: 15 ))
                .foregroundColor(.black)
                .padding(.bottom, 0)
                .padding()
                .padding(.leading, 15)
            Spacer()
            Button(action: {
                
                withAnimation {
                    viewRouter.currentPage = .page17
                }
                
            }) {
                
                Image(systemName: "arrow.right").foregroundColor(.black)
                    
            }.padding(.trailing, 20)
            .padding(.horizontal, 0)
            .font(Font.custom("Poppins-Light", size: 14 ))
            
        }.background(Color("TabHolder"))
            .cornerRadius(15)
            .padding(.vertical, 3)
            .padding(.horizontal, 25)
    }
}
struct FAQView_Previews: PreviewProvider {
    static var previews: some View {
        FAQView(viewRouter: ViewRouter(), index: 0)
    }
}
