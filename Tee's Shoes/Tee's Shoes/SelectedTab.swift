//
//  SelectedTab.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 18/11/2021.
//

import SwiftUI

struct SelectedTab: View {
    @State var selectedTab = "house"
    @State private var selection = 0
    @StateObject var viewRouter: ViewRouter
    @StateObject var selected: SelectedObject

    var body: some View {
        VStack{
            switch selectedTab {
            case "house":
                HomeView(viewRouter: viewRouter)
            case "newspaper":
                NewsMain(viewRouter: viewRouter, selected: selected)
            case "bag":
                BagView(viewRouter: viewRouter)
            case "magnifyingglass.circle":
                SearchView(index: 0, viewRouter: viewRouter)
            case "questionmark.circle":
                HelpMain(viewRouter: viewRouter)
            default:
                HomeView(viewRouter: viewRouter)
            }
            ZStack(alignment: .bottom, content: {
               
             
                CustomTabBar(selectedTab: $selectedTab, viewRouter: viewRouter)

            })
        } .background(LinearGradient(gradient: Gradient (colors:[
            
            Color.black,
            Color.black,
            Color.mygray,
            
           
        ]),  startPoint: .topLeading, endPoint: .bottomTrailing))
          
    }
}

struct SelectedTab_Previews: PreviewProvider {
    static var previews: some View {
        SelectedTab(viewRouter: ViewRouter(), selected: SelectedObject())
    }
}
