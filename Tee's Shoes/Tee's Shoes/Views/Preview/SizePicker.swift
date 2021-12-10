//
//  SizePicker.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 05/11/2021.
//

import SwiftUI

struct SizePicker: View {
    @State var value = ""
    var placeholder = "Size"
    var dropDownList = ["S", "M", "L"]
    var body: some View {
        Menu {
                   ForEach(dropDownList, id: \.self){ client in
                       Button(client) {
                           self.value = client
                       }.font(Font.custom("Poppins-Light", size: 14 ))
                   }
               } label: {
                   VStack(spacing: 5){
                       HStack{
                           Text(value.isEmpty ? placeholder : value)
                               .foregroundColor(value.isEmpty ? .white : .white)
                               .font(Font.custom("Poppins-Light", size: 15 ))

                           Spacer()
                           Image(systemName: "chevron.down")
                               .foregroundColor(Color.white)
                               .font(Font.custom("Poppins-Light", size: 17 ))
                       }
                       .padding(.horizontal)
                       .padding(10)
                       .background(Color.black)
                       .frame(width: 230, height: 35)
                       .cornerRadius(40)
                   }
               }
    }
    }


struct SizePicker_Previews: PreviewProvider {
    static var previews: some View {
        SizePicker()
    }
}
