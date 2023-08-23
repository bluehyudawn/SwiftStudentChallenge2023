//
//  SwiftUIView.swift
//  
//
//  Created by alex on 2023/08/22.
//

import SwiftUI

let progressImage = ["progress_bar_0", "progress_bar_1", "progress_bar_2", "progress_bar_3","progress_bar_4","progress_bar_5"]

struct QuizAllView: View {
    
    @ObservedObject var quizManager = QuizManager()
    @State var showRewardView: Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack(alignment: .top) {
                
                Image("CoC_quiz")
                    .edgesIgnoringSafeArea(.all)
                
                HStack(spacing: 20) {
                    
                    Image("icon_Home")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 96, height: 96)
                        .padding()
                    
                    Spacer()
                    
                    Image("icon_exit_wh")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 96, height: 96)
                        .padding()
                    
                }
                .padding()
                
                
                VStack {
                    if quizManager.progress >= 0 && quizManager.progress < progressImage.count {
                        Image(progressImage[quizManager.progress]).padding()
                    }
                  
                    
                    Spacer()
                    Text(QuizManager.allQuiz[quizManager.currentStage].quizText)
                        .font(.custom("Chewy-Regular", size: 298))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    HStack {
                        ForEach(QuizManager.allQuiz[quizManager.currentStage].possibleAnswers.indices, id: \.self) { index in
                            let choice = QuizManager.allQuiz[quizManager.currentStage].possibleAnswers[index]
                            let colors: [Color] = [.blue, .green, .orange]
                            
                            ZStack {
                                answerBox()
                                Text("\(choice)")
                                    .font(.custom("Chewy-Regular", size: 136))
                                    .foregroundColor(colors[index])
                            }
                            .onTapGesture {
                                quizManager.checkAnswer(choice)
                            }
                        }
                    }
                }
                .padding()
                .padding()
                .padding()
                
                
                if quizManager.showBalloon {
                    Image("chatBubble_O")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 236, height: 190)
                        .position(x: UIScreen.main.bounds.midX - -320, y: UIScreen.main.bounds.midY - 280)
                }
                if quizManager.showBalloon2 {
                    Image("chatBubble_X")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 236, height: 190)
                        .position(x: UIScreen.main.bounds.midX - -320, y: UIScreen.main.bounds.midY - 280)
                }
                
            }
            NavigationLink("", destination: RewardView(), isActive: $showRewardView)
                .hidden()
            
        }.navigationViewStyle(StackNavigationViewStyle())
            .onAppear {
                   if quizManager.showNextPage {
                       showRewardView = true
                       quizManager.showNextPage = false // 다음 페이지 보여주기를 리셋
                   }
               }
    }
    
}


struct QuizAllView_Previews: PreviewProvider {
    static var previews: some View {
        QuizAllView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
