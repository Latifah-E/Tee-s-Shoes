//
//  PreviewCarouselButtons.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 09/11/2021.
//

import SwiftUI

struct PreviewCarouselButtons: View {
    @Binding var selection: Int
    let buttons = ["<", ">"]
    var body: some View {
        HStack {
            ForEach(buttons, id: \.self) {buttonLabel in
                Button(action: { buttonAction(buttonLabel)}, label: {
                    Text(buttonLabel)
                        .font(Font.custom("Poppins-Light", size: 40 ))
                        .multilineTextAlignment(.leading)
                        .frame(width: 320, height: 50)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                })
                
            }
        }
    }
    func buttonAction(_ buttonLabel: String){
        withAnimation {
            if buttonLabel == "<" && selection > 0 {
                selection -= 1
            } else if buttonLabel == ">" && selection < previews.count - 1{
                selection += 1
            }
        }
    }
}

struct PreviewCarouselButtons_Previews: PreviewProvider {
    static var previews: some View {
        PreviewCarouselButtons(selection: Binding.constant(0))
    }
}
