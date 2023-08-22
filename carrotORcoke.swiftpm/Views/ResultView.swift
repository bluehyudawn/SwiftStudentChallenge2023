//
//  Result.swift
//  carrotORcoke
//
//  Created by alex on 2023/04/17.
//

import SwiftUI

struct ResultView: View {
    @Binding var count: Int
    @Binding var progress: Double
    @State private var isShowingAlert = false
    @State private var showChatBubble = false
    @Binding var selectedBadge: RewardBadge
    
    
    
    var body: some View {
        ZStack {
            Image("CoC_result_today")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            
            rewardPopup(isPresented: .constant(true), badge: .constant(true), selectedBadge: $selectedBadge)
            
            Image("icon_Exit")
                .frame(width: 76)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding(40)
                .onTapGesture {
                    isShowingAlert = true
                }
                .alert(isPresented: $isShowingAlert) {
                    Alert(title: Text("Exit"), message: Text("Are you sure you want to exit?"), primaryButton: .destructive(Text("Yes")) {
                        // exit the app
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
                    }, secondaryButton: .cancel(Text("No")))
                    
                }
            
            
            
            Text("Today's Adventure has ended. See you tomorrow!")
                .font(.custom("Pretendard-SemiBold", size: 36))
                .foregroundColor(.white)
                .frame(width: 1250, height: 200)
                .lineSpacing(10)
                .position(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.maxY - 94)
            
            if isDayPassed() {
                // move to splash when the daypaseed
                ContentView()
            }
            
            if showChatBubble {
                Image("chatBubble_Goodbye")
                    .position(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
                    .transition(.scale)
                    .position(x: UIScreen.main.bounds.midX - -140, y: UIScreen.main.bounds.maxY - 824)
                
            }
        }
        .onAppear {
            incrementCount()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    showChatBubble = true
                }
            }
            
        }
        .statusBarHidden(true)
        //        statusBarHidden()
        
    }
    
    
    
    
    
    func incrementCount() {
        count += 1
        progress = Double(count) / 7.0
        // UserDefaults save
        UserDefaults.standard.set(progress, forKey: "KEY_PROGRESS")
        if progress >= 1.0 {
            // Go to reward screen
        }
    }
    
    
}

//struct ResultView_Previews: PreviewProvider {
//    static var previews: some View {
////        ResultView()
//        ResultView(count: .constant(0), progress: .constant(0.5), selectedBadge: .constant(RewardBadge.allCases.randomElement()!))
//        
//            
//    }
//}

func isDayPassed() -> Bool {
    let userDefault = UserDefaults.standard
    let key = "noon"
    let currentNation = "US"
    
    if let noon = userDefault.object(forKey: key + "_" + currentNation) as? Date {
        // compared with today's date
        let noonDate = Calendar.current.date(bySettingHour: 24, minute: 0, second: 0, of: noon)!
        return Date() > noonDate
        
    }
    
    return false
}
