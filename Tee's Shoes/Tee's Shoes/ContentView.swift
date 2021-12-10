//
//  ContentView.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 28/10/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var selected: SelectedObject
    @State var index: Int
    var body: some View {
        
                    switch viewRouter.currentPage  {
                        case .page1:
                            WalkThrough(viewRouter: viewRouter)
                        case .page2:
                        SelectedTab(viewRouter: viewRouter, selected: selected)
                        case .page3:
                            MensView(viewRouter: viewRouter)
                        case .page4:
                            KidsView(viewRouter: viewRouter)
                        case .page5:
                            WomensView(viewRouter: viewRouter)
                        case .page6:
                            PreviewView(viewRouter: viewRouter)
                        case .page7:
                            CheckoutView(viewRouter: viewRouter)
                        case .page8:
                            ThankYouView(viewRouter: viewRouter)
                        case .page9:
                            BagView(viewRouter: viewRouter)
                    case .page10:
                        SelectedArticle(viewRouter: viewRouter, selected: selected)
                    case .page11:
                        ComplainView(viewRouter: viewRouter)
                    case .page12:
                        SentView(viewRouter: viewRouter)
                    case .page13:
                        tncView(viewRouter: viewRouter)
                    case .page14:
                        Contactus(viewRouter: viewRouter, index: index)
                    case .page15:
                        PrivacyPolicy(viewRouter: viewRouter)
                    case .page16:
                        FAQView(viewRouter: viewRouter, index: index)
                    case .page17:
                        FAQDetails(viewRouter: viewRouter)
                    

                        }
      

            

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter(), selected: SelectedObject(), index: 0)
    }
}
