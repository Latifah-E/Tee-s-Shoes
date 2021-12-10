//
//  YesPopup.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 22/11/2021.
//

import SwiftUI

struct YesPopup: View {
    @Binding var show: Bool
    var body: some View {
        ZStack {
                   if show {
                       // PopUp background color
                       Color.black.opacity(show ? 0.4 : 0).edgesIgnoringSafeArea(.all)

                       // PopUp Window
                       VStack(alignment: .center, spacing: 0) {

                           Text("Thank You For Your FeedBack!")
                               .multilineTextAlignment(.center)
                               .font(Font.custom("Poppins-Thin", size: 25 ))
                               .padding(EdgeInsets(top: 20, leading: 25, bottom: 20, trailing: 25))
                               .foregroundColor(Color.black)

                           Button(action: {
                               // Dismiss the PopUp
                               withAnimation(.linear(duration: 0.3)) {
                                   show = false
                               }
                           }, label: {
                               Text("Close")
                                   .foregroundColor(Color.white)
                                   .padding(.vertical, 10)
                                   .padding(.horizontal, 45)
                                   .background(Color.black)
                                   .cornerRadius(20)
                                   .font(Font.custom("Poppins-Light", size: 14 ))
                                   .padding(EdgeInsets(top: 10, leading: 25, bottom: 20, trailing: 25))
                           }).buttonStyle(PlainButtonStyle())
                       }
                       .frame(maxWidth: 350)
                       .background(Color.white.opacity(1))
                       .cornerRadius(30)
                   }
               }
    }
}

struct YesPopup_Previews: PreviewProvider {
    static var previews: some View {
        YesPopup(show: Binding.constant(true))
    }
}
