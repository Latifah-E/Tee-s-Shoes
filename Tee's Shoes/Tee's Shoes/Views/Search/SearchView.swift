//
//  SearchView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 19/11/2021.
//

import SwiftUI

struct SearchView: View {
    @State private var searcher: String = ""
    @State private var selectedCard: Int = 0
    @State var string: String = ""
    @State  var index: Int
    @State var show = false
    @State var isNotFoundMessage:Bool = false
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack{
            HStack{
                if !self.show{
                    Spacer()
                }
                Spacer()
                HStack{
                    if self.show{
                        Image(systemName: "magnifyingglass").padding(.horizontal, 8)
                            .foregroundColor(.black)
                        TextField("", text: self.$searcher)
                            .font(Font.custom("Poppins-Light", size: 13 ))
                            .placeholder2(when: searcher.isEmpty) {
                                Text("Search...").opacity(0.3)
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal,0)
                        
                        Button(action: {
                            
                            withAnimation {
                                
                                self.searcher = ""
                                self.show.toggle()
                                UIApplication.shared.dismissKeyboard()
                            }
                            
                        }) {
                            
                            Image(systemName: "xmark").foregroundColor(.black)
                                
                        }
                        .padding(.horizontal, 0)
                        .font(Font.custom("Poppins-Light", size: 12 ))
                    }
                    else{
                        
                        Button(action: {
                            
                            withAnimation {
                                
                                self.show.toggle()
                            }
                            
                        }) {
                            
                            Image(systemName: "magnifyingglass").foregroundColor(.black)
                                .padding(10)
                            
                            
                                
                            
                            
                        }
                    }
                }
                .padding(self.show ? 10 : 0)
                    .padding(5)
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(color: Color("Background"), radius: 8, x: 0, y: 3)
            }
            Spacer()
            
                if self.searcher != ""{
                    
                    if shoes.indices.filter({shoes[$0].name.lowercased().contains(self.searcher.lowercased()) || shoes[$0].brand.lowercased().contains(self.searcher.lowercased()) }).count == 0{
                        withAnimation{
                            Text("No Results Found..").padding(.top, 10)
                                .font(Font.custom("Poppins-thin", size: 25 ))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                            
                        }
                        
                       
                    }
                    else{
                        withAnimation{
                            ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15){
                                
                            
                            ForEach(shoes.indices.filter({shoes[$0].name.lowercased().contains(self.searcher.lowercased())}),id: \.self){index in
                                
                                VStack(spacing: 8){
                                    
                                    Image(shoes[index].image)
                                        .resizable()
                                        .frame(width: 133, height: 100)
                                    Text(shoes[index].name)
                                        .font(Font.custom("Poppins-Light", size: 15 ))
                                        .foregroundColor(.white)
                                    Text("$\(String(shoes[index].price))")
                                        .font(Font.custom("Poppins-Light", size: 13 ))
                                        .foregroundColor(.white)
                                    
                                    PreviewButton(viewRouter: viewRouter)
                                }.padding(.horizontal, 40)
                                    .padding(.vertical, 40)
                                    .background(Color("TabHolder"))
                                    .clipShape(Rectangle())
                                    .onTapGesture {
    //                                    self.index = 0
                                    }
                                    .cornerRadius(30)
                            }
                        }
                        }
                        }
                    }
                } else{
                    withAnimation{
                        VStack{
                            Spacer()
                            ZStack{
                                Image("lost")
                                    .resizable()
                                    .frame(width: .infinity)
                                    .cornerRadius(40)
                                Text("Let’s Find What You’re Looking For...")
                                    .font(Font.custom("Poppins-thin", size: 30 ))
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                            }.padding(.vertical, 120)
                            Spacer()
                        }
                    }
                    

                   
                }
           
            Spacer()
           
        }.padding()
    }
}
extension View {
    func placeholder2<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
                .foregroundColor(.black)
                .padding(.leading,0)
                .font(Font.custom("Poppins-Light", size: 14 ))
            self
        }
    }
}
extension UIApplication {
      func dismissKeyboard() {
          sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
      }
  }

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(index: 0, viewRouter: ViewRouter())
    }
}
