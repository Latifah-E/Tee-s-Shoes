//
//  Contactus.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 22/11/2021.
//

import SwiftUI

struct Contactus: View {
    @StateObject var viewRouter: ViewRouter
    @State var index: Int
    var body: some View {
        VStack{
            HStack{
                BackButton(viewRouter: viewRouter)
                 
                Spacer()
                Text("Contact Us")
                    .font(Font.custom("Poppins-Light", size: 16 ))
                    .foregroundColor(.white)
                    .padding(.bottom, 0)
                    .padding(.leading, -10)
                Spacer()
               
                   
            }.padding(.top, 0)
            Image("contactus")
                .resizable()
                .frame(width: .infinity, height: 190)
                .padding(.top, 30)
                .padding(.horizontal, 30)
            
            ScrollView(.vertical, showsIndicators: false){
                ForEach(contactor.indices ,id: \.self){index in
                    Contactcard(index: index)
                    
                }
            }.padding(.top)
            Spacer()
            
            
        }.transition(.move(edge: .trailing))
            .background(LinearGradient(gradient: Gradient (colors:[
            
            Color.black,
            Color.black,
            Color.mygray,
            
           
        ]),  startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea())
    }
}
struct Contactcard: View{
    let index: Int
    var body: some View{
        VStack(alignment: .leading, content: {
            
            HStack{
                Text(contactor[index].region)
                .font(Font.custom("Poppins-Light", size: 15 ))
                .foregroundColor(.white)
                .padding(.bottom, 0)
                Spacer()
                
            }.frame(width: 330, height: 12)
                .padding(.bottom, -3)
                .padding(.top, 10)
                .padding(.leading, 20)
            Text(contactor[index].email)
                .font(Font.custom("Poppins-Light", size: 13 ))
                .foregroundColor(Color("contactcolor"))
                .padding(.bottom, 0)
                .padding(.leading, 20)

            Text(contactor[index].phone)
                .font(Font.custom("Poppins-Light", size: 13 ))
                .foregroundColor(Color("contactcolor"))
                .padding(.bottom, 0)
                .padding(.leading, 20)

            Text(contactor[index].address)
                .font(Font.custom("Poppins-Light", size: 13))
                .foregroundColor(Color("contactcolor"))
                .padding(.bottom, 0)
                .padding(.leading, 20)

            Text(contactor[index].box)
                .font(Font.custom("Poppins-Light", size: 13 ))
                .foregroundColor(Color("contactcolor"))
                .padding(.bottom, 10)
                .padding(.leading, 20)

            
        })
            .background(Color("TabHolder"))
            .cornerRadius(15)
            .padding(.vertical, 3)
           
    }
}
struct Contactus_Previews: PreviewProvider {
    static var previews: some View {
        Contactus(viewRouter: ViewRouter(), index: 0)
    }
}


