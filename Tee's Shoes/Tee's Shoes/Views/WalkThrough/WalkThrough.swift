
import SwiftUI

struct WalkThrough: View {
    @State private var selection = 0
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            GradientView()
            
            VStack{
                PageTabView(selection:$selection, viewRouter: viewRouter)
                
            }
        }
        .transition(.move(edge: .bottom))
    }
    

}
struct WalkThrough_Previews: PreviewProvider {
    static var previews: some View {
        WalkThrough(viewRouter: ViewRouter())
        
    }
}
