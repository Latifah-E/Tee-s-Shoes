//
//  PreviewButton.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 04/11/2021.
//

import SwiftUI

struct PreviewButton: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        HStack {
            
            Button(action: {
                withAnimation{
                    viewRouter.currentPage = .page6
                }
              
            },label: {
                Text("Preview")
        
                    
                    .font(Font.custom("Poppins-Light", size: 13 ))
                    .foregroundColor(.white)
                    .padding(5)
                    .padding(.horizontal, 5)
                    
            }).background( Color("TabHolder2"))
                .cornerRadius(10)
        }
    }
}

struct PreviewButton_Previews: PreviewProvider {
    static var previews: some View {
        PreviewButton(viewRouter: ViewRouter())
    }
}
