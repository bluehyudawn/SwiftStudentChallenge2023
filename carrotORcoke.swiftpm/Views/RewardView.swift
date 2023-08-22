//
//  Reward.swift
//  carrotORcoke
//
//  Created by alex on 2023/04/17.
//

import SwiftUI

struct RewardView: View {
    // kind of badges
    
    
    
    
    
    
    // 랜덤으로 선택된 보상뱃지
    @State private var selectedBadge: RewardBadge = RewardBadge.allCases.randomElement()!
    @Binding var badge: RewardBadge?
    @State var showNextPage = false
    @State private var isSelected = false
    
    
    private func selectBadge(badge: RewardBadge) {
        selectedBadge = badge
        //        showNextPage = true
    }
    
    var body: some View {
        
        ZStack {
            Image("CoC_reward")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width:80, height:175)
                    .opacity(0)
                
                RoundedRectangle(cornerRadius: 32)
                    .frame(width:709, height: 709)
                    .foregroundColor(Color(#colorLiteral(red: 0.2509803922, green: 0.6666666667, blue: 0.9450980392, alpha: 1)))
                
                
            }
            
            
            VStack{
                
                VStack{
                    Text("REWARD")
                        .font(.custom("Chewy-Regular", size: 72))
                    //                        .padding(0.1)
                        .foregroundColor(Color(#colorLiteral(red: 0.9921568627, green: 0.5490196078, blue: 0.2156862745, alpha: 1)))
                    
                    Text("Choose your gift today : Carrot or Coke!")
                        .font(.custom("Pretendard-Medium", size: 28))
                        .opacity(0.4)
                    
                    
                    
                }
                
                
                VStack {
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width:80, height:32)
                        .opacity(0)
                    HStack {
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                    }
                    HStack {
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                    }
                    HStack {
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                        rewardBox()
                            .onTapGesture {
                                // 랜덤으로 보상뱃지 선택
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                    }
                    HStack {
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                        rewardBox()
                            .onTapGesture {
                                // choice
                                selectBadge(badge: selectedBadge)
                                isSelected = true
                            }
                        
                    }
                    
                    
                }
                
                .statusBarHidden(true)
            }
            
            .padding(60)
            
            if isSelected {
               
                ZStack{
                    Image("bg_reward_gradient")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        Image(selectedBadge.imageName)
                            .resizable()
                            .frame(width: 440, height: 440)
                            .padding(30)
                        
                        
                        Text("Congrats!")
                            .font(.custom("Chewy-Regular", size: 90))
                            .foregroundColor(Color(#colorLiteral(red: 0.9921568627, green: 0.5490196078, blue: 0.2156862745, alpha: 1)))
                            .padding(10)
                        Text(selectedBadge.description)
                            .font(.custom("Pretendard-Medium", size: 28))
                            .opacity(0.4)
                        
                        VStack {
                            
                            PrimaryButton(text: "Get a Badge")
                            //                            .position(x: 683, y: 860)
                                .onTapGesture {
                                    //
                                    showNextPage = true
                                }
                                .padding(40)
                                .fullScreenCover(isPresented: $showNextPage) {
                                    ResultView(count: .constant(0), progress: .constant(0.5), selectedBadge: $selectedBadge)
                                } }
                        
                    }
                }}
        }
        
        
     
        
    }
    
}





struct RewardView_Previews: PreviewProvider {
    static var previews: some View {
        
        RewardView(badge: .constant(nil))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}


enum RewardBadge: Int, CaseIterable {
    case badge1, badge2, badge3, badge4, badge5
    
    var imageName: String {
        switch self {
        case .badge1:
            return "badge_vegetables"
        case .badge2:
            return "badge_hug"
        case .badge3:
            return "badge_soda"
        case .badge4:
            return "badge_meats"
        case .badge5:
            return "badge_fruits"
        }
    }
    var description: String {
        switch self {
        case .badge1:
            return "It's a day to eat one more vegetable :)"
        case .badge2:
            return "It's a day to one more hug :)"
        case .badge3:
            return "It's a day to drink a soda! yeah !"
        case .badge4:
            return "It's a day to eat one more meat ?"
        case .badge5:
            return "It's a day to eat one more fruits :)"
        }
    }
}
