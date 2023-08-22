import SwiftUI

struct Home: View {
    
    @State private var count = 0
    @State var progress = 0.0
    @State var fever: Double = 0
    @State var showNextPage = false
    
    var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return [.landscapeLeft, .landscapeRight]
    }
    
    var body: some View {
        
        ZStack {
            
            Image("CoC_home")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                StatusView()
                    .position(x: 683, y:90)
                   
                    
            }
           
            ZStack {
                
               
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: UIScreen.main.bounds.width, height: 430)
                    .foregroundColor(Color(#colorLiteral(red: 0.9215686275, green: 0.9647058824, blue: 0.8588235294, alpha: 1)))
                .position(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.maxY - 80)
            }
            
            Text("Hello, Friend! I just wondering what will you get some\ncool reward today. Ready to get a quiz?")
                .font(.custom("Pretendard-SemiBold", size: 36))
                .frame(width: 1250, height: 200)
                .lineSpacing(10)
                .position(x: UIScreen.main.bounds.midX - +180, y: UIScreen.main.bounds.maxY - 204)
            
          
            
            
            CTAButton(text: "Let's Go!")
                .position(x: 1223, y: 940)
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        showNextPage = true
                    }
                }
                .font(.custom("Chewy-Regular", size: 28))
                .fullScreenCover(isPresented: $showNextPage) {
                    QuizView1()

                }
                .transition(.move(edge: .bottom))
            
            VStack {
                
                ProgressBar(progress: $fever)
                    .position(x:370, y:670)
                    .statusBarHidden()

                
                Text("Badge fever (\(Int(progress)/7)/7)")
                    .font(.custom("Chewy-Regular", size: 24))
                    .foregroundColor(Color.white)
                    .position(x: UIScreen.main.bounds.midX - +570, y: UIScreen.main.bounds.maxY - 914)
                
                
            }
            
            
      
        

            
            
            
        }
        .onAppear {
            
            updateProgressBar()
            }
            
        }
        
        
    func updateProgressBar() {
        let progress = UserDefaults.standard.double(forKey: "KEY_PROGRESS")
        count = Int(progress * 7)
        self.progress = progress
        
       
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
