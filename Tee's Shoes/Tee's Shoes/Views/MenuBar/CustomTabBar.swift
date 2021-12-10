//
//  CustomTabBar.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 02/11/2021.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: String
    @StateObject var viewRouter: ViewRouter
    @State var tabPoints : [CGFloat] = []
    var body: some View {
        HStack(spacing: 0){
            
            
            TabBarButton(viewRouter:viewRouter, image: "house" , selectedTab: $selectedTab, tabPoints: $tabPoints)
            TabBarButton(viewRouter:viewRouter, image: "newspaper" , selectedTab: $selectedTab, tabPoints: $tabPoints)
            TabBarButton(viewRouter:viewRouter, image: "bag" , selectedTab: $selectedTab, tabPoints: $tabPoints)
            TabBarButton(viewRouter:viewRouter, image: "magnifyingglass.circle" , selectedTab: $selectedTab, tabPoints: $tabPoints)
            TabBarButton(viewRouter:viewRouter, image: "questionmark.circle" , selectedTab: $selectedTab, tabPoints: $tabPoints)
            
            
        }
        .padding()
        .background(Color("TabHolder").clipShape(MoverView(tabPoint: getCurvePoint() - 15)))
        .overlay(
            
            Circle()
                .fill(Color("TabHolder"))
                .frame(width: 10, height:10)
                .offset(x: getCurvePoint() - 20)
            ,alignment: .bottomLeading
        )
        .cornerRadius(50)
        .padding(.horizontal)
    }
    
    func getCurvePoint()-> CGFloat{
        if tabPoints.isEmpty{
            return 10
        }
        else{
            switch selectedTab {
            case "house":
                return tabPoints[4]
            case "newspaper":
                return tabPoints[3]
            case "bag":
                return tabPoints[2]
            case "magnifyingglass.circle":
                return tabPoints[1]
            case "questionmark.circle":
                return tabPoints[0]
            default:
                return tabPoints[4]
            }
        }
    }
}

struct TabBarButton : View {
    @StateObject var viewRouter: ViewRouter
    var image : String
    @Binding var selectedTab: String
    @Binding var tabPoints: [CGFloat]
    var body: some View{
        
        GeometryReader{ reader -> AnyView in
            let midX = reader.frame(in: .global).midX
            
            DispatchQueue.main.async{
                if tabPoints.count <= 5{
                    tabPoints.append(midX)
                }
            }
            
            return AnyView(
                Button(action : {
                    withAnimation{
                        selectedTab = image
                    }
                }, label : {
                    Image(systemName: "\(image)\(selectedTab == image ? ".fill" : "")")
                        .font(.system(size:25, weight: .semibold))
                        .foregroundColor(Color("TabSelected"))
                        .offset(y: selectedTab == image ? -10 : 0)
                })
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            )
           
        }
        .frame(height: 50)
    }
}
