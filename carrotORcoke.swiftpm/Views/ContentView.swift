import SwiftUI

struct ContentView: View {
    @State var showNextPage = false
    @State private var count = 0
        @State var progress = 0.0 // progress 초기값은 0
    var body: some View {
        
        //    var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        //        return [.landscapeLeft, .landscapeRight]
        
        
        ZStack {
            
            Image("CoC_splash_bg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
                .statusBarHidden()
            
            
            Image("CoC_egloo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 416, height: 500)
                .position(x: 683, y: 470)
            
            Image("CoC_title")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 1011.91, height: 316.69)
                .position(x: 683, y: 185)
            
            PrimaryButton(text: "Carrot or Coke!")
                .position(x: 683, y: 860)
                .onTapGesture {
                    //
                    showNextPage = true
                }
//                .font(.custom("Pretendard-SemiBold", size: 28))
            Text(": Press to Start :")
                .font(.system(size: 18, weight: .medium))
                .position(x: 683, y: 928)
        }
        
        .fullScreenCover(isPresented: $showNextPage) {
            Home()
        }
        
    }
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

