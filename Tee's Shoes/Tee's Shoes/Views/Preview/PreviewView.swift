//
//  PreviewView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 04/11/2021.
//

import SwiftUI

struct PreviewView: View {
    @State private var selection = 0
    @StateObject var viewRouter: ViewRouter
    @State var color = 0
    var body: some View {
        VStack(content: {
            HStack{
                BackButton2(viewRouter: viewRouter)
                Spacer()
                    Text("Air Jordans")
                        .font(Font.custom("Poppins-ExtraBold", size: 36 ))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top, 35)
                Spacer()
               
                   
            }
                Text("Preview")
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor(.white)
                    .padding(.bottom, 10)

                ZStack{
                    PreviewSlideView(selection:$selection)
                    PreviewCarouselButtons(selection:$selection)
                }
                VStack{

                ScrollView(.horizontal, showsIndicators: false){
                    ComponentsView()
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                }
                

                }
            ZStack(alignment: .bottom, content:{
                VStack{
                    Text("Nike")
                        .font(Font.custom("Poppins-Bold", size: 24 ))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                    Text("$100.99")
                        .font(Font.custom("Poppins-Light", size: 20 ))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ")
                        .font(Font.custom("Poppins-Light", size: 13 ))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    SizePicker()
                        .padding(.top, 5)
                    AddToCart()
                        .padding(.bottom, 20)
                }
            }).background(Color("TabHolder"))
                .cornerRadius(80, corners: [.topLeft, .topRight])
                .ignoresSafeArea()
                
            
            
            

        }).transition(.move(edge: .trailing))
            .ignoresSafeArea()
            .background(LinearGradient(gradient: Gradient (colors:[

            Color.black,
            Color.black,
            Color.mygray,


        ]),  startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea())
    }
    
   }

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
struct AddToCart: View {
    var body: some View {
        
            Button(action: {}, label: {
                HStack{
                    Text("Add To Bag")
            
                        
                        .font(Font.custom("Poppins-Light", size: 14 ))
                        .foregroundColor(.white)
                        .padding(10)
                        .padding(.horizontal, 10)
                    Spacer()
                    Image(systemName: "bag.fill")
                        .foregroundColor(Color.white)
                        .font(Font.custom("Poppins-Light", size:20 ))
                        .padding(.trailing, 25.0)
                         
                }
                
                    
            }).background( Color.black)
                .frame(width: 230, height: 35)
                .cornerRadius(40)
                
        
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct ComponentsView : View{

    @State var index = 0
    var body : some View{

        HStack(spacing: 10){
            VStack(spacing: 8){

                Image(systemName: "leaf.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.black)
                Text("80% Green")
                    .font(Font.custom("Poppins-Light", size: 13 ))
                    .foregroundColor( self.index == 0 ? .white : .white)
            }.padding(.horizontal, 20)
                .padding(.vertical, 18)
                .background(self.index == 0 ? Color("TabHolder") : Color("TabHolder"))
                .clipShape(Rectangle())
                .onTapGesture {
                    self.index = 0
                }
                .cornerRadius(20)

            VStack(spacing: 5){

                Image(systemName: "dollarsign.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.black)
                Text("100 Purchases")
                    .font(Font.custom("Poppins-Light", size: 13 ))
                    .foregroundColor( self.index == 1 ? .white : .white)
            }.padding(.horizontal, 10)
                .padding(.vertical, 20)
                .background(self.index == 1 ? Color("TabHolder") : Color("TabHolder"))
                .clipShape(Rectangle())
                .onTapGesture {
                    self.index = 1
                }
                .cornerRadius(20)

            VStack(spacing: 5){

                Image(systemName: "shippingbox.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.black)
                Text("50 Left")
                    .font(Font.custom("Poppins-Light", size: 13 ))
                    .foregroundColor( self.index == 2 ? .white : .white)
            }.padding(.horizontal, 33)
                .padding(.vertical, 20)
                .background(self.index == 2 ? Color("TabHolder") : Color("TabHolder"))
                .clipShape(Rectangle())
                .onTapGesture {
                    self.index = 2
                }
                .cornerRadius(20)

        }.padding(.horizontal, 33)
    }
}
struct BackButton2: View{
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
struct PreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView(viewRouter: ViewRouter())
    }
}
