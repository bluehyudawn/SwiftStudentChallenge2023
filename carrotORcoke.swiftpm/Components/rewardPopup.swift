//
//  File.swift
//
//
//  Created by alex on 2023/04/18.
//

import SwiftUI

struct rewardPopup: View {
    
    
    @Binding var isPresented: Bool
    @Binding var badge: Bool
    @Binding var selectedBadge: RewardBadge
    
    var body: some View {
        ZStack {
            Image("rewardPopUp")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 722, height: 390)
                .position(x: UIScreen.main.bounds.midX - 250, y: UIScreen.main.bounds.maxY - 530)
            
            
            let rewardBadge = selectedBadge
            
            Image(rewardBadge.imageName ?? "")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 240, height: 240)
                .position(x: UIScreen.main.bounds.midX - 250, y: UIScreen.main.bounds.maxY - 700)
                .overlay(
                    Text("It's a day to get one more! Great.")
                        .font(.custom("Pretendard-Medium", size: 28))
                        .opacity(0.4)
                        .frame(width: 1250, height: 200)
                        .lineSpacing(10)
                        .position(x: UIScreen.main.bounds.midX - 240, y: UIScreen.main.bounds.maxY - 444)
                )
                .overlay(
                    Text(rewardBadge.description ?? "")
                        .font(.custom("Chewy-Regular", size: 64))
                        .foregroundColor(Color(red: 1, green: 0.3803921569, blue: 0.1725490196))
                        .position(x: UIScreen.main.bounds.midX - 240, y: UIScreen.main.bounds.maxY - 515)
                )
            
            
           
        }
    }
}
//
//struct rewardPopup_Previews: PreviewProvider {
//    static var previews: some View {
//        rewardPopup(isPresented: .constant(true), badge: .constant(true), .constant())
//    }
//}
