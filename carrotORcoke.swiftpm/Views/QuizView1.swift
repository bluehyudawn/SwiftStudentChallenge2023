//
//  Quiz.swift
//  carrotORcoke
//
//  Created by alex on 2023/04/16.
//


import SwiftUI
struct QuizView1: View {
    @State var showNextPage = false
    @State var showBalloon = false
    @State var showBalloon2 = false
    @State var isCorrectAnswer: Bool?
    @State var progress: Double = 0.5
    
    var body: some View {
        ZStack {
            Image("CoC_quiz")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            Text("3+3=?")
                .font(.custom("Chewy-Regular", size: 298))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .position(x: UIScreen.main.bounds.midX - 40, y: UIScreen.main.bounds.midY - 102)
            
            VStack{
                StatusViewQuiz()
                    .position(x: 683, y:84)
            }
            
            
            
            //tap and answer ..
            VStack(alignment: .center, spacing: 22) {
                HStack {
                    ZStack {
                        answerBox()
                            .onTapGesture {
                                isCorrectAnswer = true
                                showBalloon = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                                    showBalloon = false
                                    showNextPage = true
                                }
                            }
                        Text("6")
                            .font(.custom("Chewy-Regular", size: 136))
                            .foregroundColor(.blue)
                    }
                    .statusBarHidden() 
                    ZStack {
                        answerBox()
                            .onTapGesture {
                                isCorrectAnswer = false
                                showBalloon2 = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                                    showBalloon2 = false
                                }
                            }
                        Text("8")
                            .font(.custom("Chewy-Regular", size: 136))
                            .foregroundColor(.green)
                    }
                    ZStack {
                        answerBox()
                            .onTapGesture {
                                isCorrectAnswer = false
                                showBalloon2 = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                                    showBalloon2 = false
                                }
                            }
                        Text("9")
                            .font(.custom("Chewy-Regular", size: 136))
                            .foregroundColor(.orange)
                        
                            
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 22)
            }
            .position(x: 683, y: 830)
            
            if showBalloon {
                Image("chatBubble_O")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 236, height: 190)
                    .position(x: UIScreen.main.bounds.midX - -320, y: UIScreen.main.bounds.midY - 280)
            }
            if showBalloon2 {
                 Image("chatBubble_X")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 236, height: 190)
                    .position(x: UIScreen.main.bounds.midX - -320, y: UIScreen.main.bounds.midY - 280)
                 }
            
        }
        .fullScreenCover(isPresented: $showNextPage) {
            QuizView2()

        }
    }
}


struct QuizView1_Previews: PreviewProvider {
    static var previews: some View {
        QuizView1()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

