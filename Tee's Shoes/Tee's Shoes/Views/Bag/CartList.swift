//
//  CartList.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 05/11/2021.
//

import SwiftUI

struct CartList: View {
    let index: Int
    var body: some View {
        HStack{
            Image(carts[index].image)
                .resizable()
                .frame(width: 50, height: 38)
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
                .background(Color("ShoeHolder"))
                .clipShape(Rectangle())
                .cornerRadius(10)
                .padding(.leading, 10)
                .shadow(color: Color("Shadow"), radius: 8, x: 0, y: 3)
            VStack(alignment: .leading, content:{
                Text(carts[index].name)
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor(.white)
                    .padding(.bottom,0)
                Text(carts[index].size)
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor(.white)
                    .padding(.bottom,0)
                Text(carts[index].price)
                    .font(Font.custom("Poppins-Light", size: 15 ))
                    .foregroundColor(.white)
                    .padding(.bottom,2)
            }).padding(.horizontal, 10)
            VStack(alignment: .trailing, content: {
                CancelButtons()
                    .padding(.bottom,15)
                    .padding(.trailing,3)
                CartSteppers()
            }).padding(.trailing, 10)
        }.padding(.horizontal, 0)
            .padding(.vertical, 10)
            .background(Color("TabHolder"))
            .cornerRadius(15)
    }
}

struct CancelButtons: View {
    var body: some View {
        
            Button(action: {}, label: {
                Image(systemName: "x.circle.fill")
                    .foregroundColor(.white)
                
            })
        }
}
struct CartSteppers: View {
    @State private var value: Double = 0
    var body: some View {
        HStack {
            
                      Spacer()

                      Button(action: {
                          feedback()
                          
                      }, label: {
                          if value > 0{
                              Image(systemName: "minus.circle.fill")
                                  .foregroundColor(Color.white)
                                  .frame(width: 25, height: 25)
                          }else{
                              Image(systemName: "minus.circle")
                                  .foregroundColor(Color.white)
                                  .frame(width: 25, height: 25)
                          }
                      })
            Text(" \(Int(value))")
                .foregroundColor(.white)
                .font(Font.custom("Poppins-Light", size: 17 ))
            
                      Button(action: {
                              feedback2()
                          
                      }, label: {
                          if value < 20 {
                              Image(systemName: "plus.circle.fill")
                                  .foregroundColor(Color.white)
                                  .frame(width: 25, height: 25)
                          }else{
                              Image(systemName: "plus.circle")
                                  .foregroundColor(Color.white)
                                  .frame(width: 25, height: 25)
                          }
                      })
        }
    }
    func feedback() {
        if value > 0{
            value = value - 1
        }
        else{
            value = value
        }
    }
    func feedback2() {
        if value < 20 {
            value = value + 1
        }
    }
}
struct CartList_Previews: PreviewProvider {
    static var previews: some View {
        CartList(index:0)
    }
}
