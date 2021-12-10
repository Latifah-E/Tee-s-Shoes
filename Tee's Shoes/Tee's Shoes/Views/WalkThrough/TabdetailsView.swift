//
//  TabdetailsView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 29/10/2021.
//

import SwiftUI
struct TabdetailsView: View {
    static let mygray2 = Color(red: 130 / 255, green: 130 / 255, blue: 130 / 255)
    @State private var scale: CGFloat = 0
    let index: Int
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack{
            Image(tabs[index].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:300)
            Text(tabs[index].title)
                .font(Font.custom("Poppins-ExtraBold", size: 24 ))
                .foregroundColor(.white)

            Text(tabs[index].text)
                .font(Font.custom("Poppins-Light", size: 17 ))
                .padding(30)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)

            
            
            if tabs[index].status == 1 {
                HStack {
                    Button(action: {
                        withAnimation(){
                            viewRouter.currentPage = .page2
                        }
                       
                        
                    }, label: {
                        Text("Let's Get Started")
                            .font(Font.custom("Poppins-Light", size: 16 ))
                            .foregroundColor(.white)
                            .padding(13)
                            .padding(.horizontal)
                            
                    }).background( Color("TabHolder"))
                        .cornerRadius(30)
                }
            }

           
        }
        .foregroundColor(.black)
    }
}

struct TabdetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            GradientView()
            TabdetailsView(index:0, viewRouter: ViewRouter())
        }
    }
}
