//
//  BagView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 05/11/2021.
//

import SwiftUI

struct BagView: View {
    @StateObject var viewRouter: ViewRouter
    @State var selectedTab = "bag"
    var body: some View {
        VStack{
            HStack(alignment: .center, content: {
                Spacer()
                Text("Shopping Bag")
                    .font(Font.custom("Poppins-Light", size: 18 ))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.top,10)
                    .padding(.leading, 30)
                Spacer()
                Image(systemName: "bag.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .trailing)
                    .foregroundColor(.white)
            })
                .padding(.horizontal, 10)
                .padding(.bottom, 20)
                .padding(.top, -10)
            ScrollView(.vertical, showsIndicators: false){
                ForEach(carts.indices, id: \.self) {
                    index in
                    VStack{
                        CartList(index: index).padding(.horizontal,10)
                    }
                }
            }
            Promo()
                .padding(.top,20)
            Totals()
             
            CheckoutBtn(viewRouter: viewRouter)
                .padding(.bottom,10)
           
            
        }.padding()
//            .background(Color.black)
   
       
    }
}
extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
                .foregroundColor(.gray)
                .padding(.leading,15)
                .font(Font.custom("Poppins-LightItalic", size: 15 ))
            self
        }
    }
}

struct  Promo: View{
    @State private var promoCode: String = ""
    var body: some View {
        ZStack {
                    TextField("", text: $promoCode)
                    .padding()
                    .placeholder(when: promoCode.isEmpty) {
                        Text("Promo Code")
                     }
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(20)
            HStack{
                Spacer()
               Button(action: {},label: {
                Text("Apply")
    
                
                .font(Font.custom("Poppins-ExtraLight", size: 14 ))
                .foregroundColor(.white)
                .padding(.vertical, 10)
                .padding(.horizontal, 25)
                
               }).background( Color.black)
            .cornerRadius(20)
            }.padding(.trailing, 10)
                   
        }.padding(.horizontal, 10)
    }
    
}

struct Totals: View{
    init(){
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = .clear
        UITableView.appearance().backgroundColor = .clear
        UITableView.appearance().separatorColor = UIColor.white
    }

    var body: some View{
        VStack{
            List{
                HStack{
                    Text("SubTotal")
                        .font(Font.custom("Poppins-Light", size: 18 ))
                        .padding(.vertical, 5)
                        .foregroundColor(.white)
                    
                    Spacer()
                    Text("$302.97")
                        .font(Font.custom("Poppins-ExtraBold", size: 18 ))
                        .padding(.vertical, 5)
                }.listRowBackground(Color.gray.opacity(0))
                    .foregroundColor(.white)
                HStack{
                    Text("Shipping")
                        .font(Font.custom("Poppins-Light", size: 18 ))
                        .padding(.vertical, 5)
                    Spacer()
                    Text("$2.00")
                        .font(Font.custom("Poppins-ExtraBold", size: 18 ))
                        .padding(.vertical, 5)
                }.listRowBackground(Color.gray.opacity(0))
                    .foregroundColor(.white)
                HStack{
                    Text("BagTotal")
                        .font(Font.custom("Poppins-Light", size: 18 ))
                        .padding(.vertical, 5)
                    Spacer()
                    Text("$304.97")
                        .font(Font.custom("Poppins-ExtraBold", size: 18 ))
                        .padding(.vertical, 5)
                }.listRowBackground(Color.gray.opacity(0))
                    .foregroundColor(.white)
            }
            
        }.frame(width: .infinity, height: 200)
        
        
    }


}
struct CheckoutBtn: View{
    @StateObject var viewRouter: ViewRouter
    var body: some View{
        Button(action: {
            withAnimation(){
                viewRouter.currentPage = .page7
            }
        },label: {
         Text("Proceed To Checkout")

         
         .font(Font.custom("Poppins-Light", size: 16 ))
         .foregroundColor(.white)
         .padding(.vertical, 20)
         .padding(.horizontal, 45)
         
        }).background( Color("TabHolder"))
            .cornerRadius(40)
    }
}
struct BagView_Previews: PreviewProvider {
    static var previews: some View {
        BagView(viewRouter: ViewRouter())
    }
}
