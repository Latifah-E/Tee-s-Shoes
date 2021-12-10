//
//  SelectedArticle.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 18/11/2021.
//

import SwiftUI

struct SelectedArticle: View {
    @State private var image: String = "news0"
    @State private var heading: String = "Nike Launches A New Slogan Just After Recent Merger"
    @State private var paragraph1: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore "
    @State private var paragraph2: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore "
    @StateObject var viewRouter: ViewRouter
    @StateObject var selected: SelectedObject
    var body: some View {
        VStack{
            ZStack{
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:.infinity)
                    .cornerRadius(20)
                    .padding(.top, -125)
                Text(heading)
                    .font(Font.custom("Poppins-ExtraBold", size: 25 ))
                    .foregroundColor(.white)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                    .background(Color("TabHolder").opacity(0.6))
                    .cornerRadius(25)
                    .padding()
                    
                    .clipShape(Rectangle())
                    .padding(.top, 100)
              
            }
            ScrollView(.vertical, showsIndicators: false){
                Text(paragraph1)
                    .font(Font.custom("Poppins-Light", size: 14 ))
                    .multilineTextAlignment(.leading)
                    .padding(.top, 0)
                    .padding()
                    .padding(.horizontal)
                    .foregroundColor(.white)
                Text(paragraph1)
                    .font(Font.custom("Poppins-Light", size: 14 ))
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 10)
                    .padding(.top, 0)
                    .padding()
                    .padding(.horizontal)
                    .foregroundColor(.white)
            }
           
            Button(action: {
                withAnimation{
                    viewRouter.currentPage = .page2
                }
              
            },label: {
                Text("Back")
        
                    
                    .font(Font.custom("Poppins-Light", size: 13 ))
                    .foregroundColor(.white)
                    .padding(.horizontal, 50)
                    .padding(.vertical, 10)
                    
            }).background( Color("TabHolder2"))
                .cornerRadius(20)
        
        }.background(LinearGradient(gradient: Gradient (colors:[
            
            Color.black,
            Color.black,
            Color.mygray,
            
           
        ]),  startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea())
            .onAppear{
                switchObjects()
            }
            .transition(.move(edge: .trailing))
    }
    func switchObjects(){
        switch selected.currentObject  {
        case .object1:
            self.image = news[0].self.image
            self.heading = news[0].self.headliner
            self.paragraph1 = news[0].self.context
            self.paragraph2 = news[0].self.context2
        case .object2:
            self.image = news[1].self.image
            self.heading = news[1].self.headliner
            self.paragraph1 = news[1].self.context
            self.paragraph2 = news[1].self.context2
        case .object3:
            self.image = news[2].self.image
            self.heading = news[2].self.headliner
            self.paragraph1 = news[2].self.context
            self.paragraph2 = news[2].self.context2
        
        }
    }
}

struct SelectedArticle_Previews: PreviewProvider {
    static var previews: some View {
        SelectedArticle(viewRouter: ViewRouter(), selected: SelectedObject())
    }
}
