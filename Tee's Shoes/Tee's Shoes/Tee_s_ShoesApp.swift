//
//  Tee_s_ShoesApp.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 28/10/2021.
//

import SwiftUI

@main
struct Tee_s_ShoesApp: App {
    @StateObject var viewRouter = ViewRouter()
    @StateObject var selected = SelectedObject()
    @State var index = 0
    var body: some Scene {
        WindowGroup {
            ContentView(viewRouter: viewRouter, selected: selected, index: index)
        }
    }
}
