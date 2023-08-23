//
//  File.swift
//  
//
//  Created by alex on 2023/08/23.
//


import SwiftUI
import Combine

struct Quiz {
    let quizText: String
    let possibleAnswers: [Int]
    let correctAnswerIndex: Int
    
}

class QuizManager: ObservableObject {
    @Published var currentStage = 0
    @Published var showBalloon = false
    @Published var showBalloon2 = false
    
    @Published var progress: Int = 0 // 0부터 5까지의 프로그레스 상태
    @Published var showNextPage: Bool = false
    
    static let allQuiz: [Quiz] = [
        
        Quiz(quizText : "3+3?",
             possibleAnswers: [
                6,
                8,
                9
             ], correctAnswerIndex: 6
            ),
        Quiz(quizText : "2+5?",
             possibleAnswers: [
                1,
                9,
                7
             ], correctAnswerIndex: 7
            ),
        Quiz(quizText : "11+11?",
             possibleAnswers: [
                32,
                22,
                19
             ], correctAnswerIndex: 22
            ),
        Quiz(quizText : "2-0?",
             possibleAnswers: [
                2,
                1,
                3
             ], correctAnswerIndex: 2
            ),
        Quiz(quizText : "9+9?",
             possibleAnswers: [
                19,
                16,
                18
             ], correctAnswerIndex: 18
            ),
        Quiz(quizText : "10-3?",
             possibleAnswers: [
                8,
                6,
                7
             ], correctAnswerIndex: 7
            )
        
        
    ]
    
    var currentPossibleAnswers: [Int] {
        if currentStage < Self.allQuiz.count {
            return Self.allQuiz[currentStage].possibleAnswers
        } else {
            return []
        }
    }
    
    func checkAnswer(_ userAnswer: Int) {
        //               if Self.allQuiz[currentStage].correctAnswerIndex == userAnswer
        
        if currentStage < Self.allQuiz.count {
            let correctAnswer = Self.allQuiz[currentStage].correctAnswerIndex
            if correctAnswer == userAnswer {
                self.showBalloon = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    self.showBalloon = false
                    withAnimation(.easeIn(duration: 0.3)) {
                        self.currentStage += 1
                        self.progress += 1
                    }
                }
            } else {
                self.showBalloon2 = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    self.showBalloon2 = false
                }
            }

                if currentStage >= Self.allQuiz.count {
                    // 모든 퀴즈가 끝났을 때
                    showNextPage = true
                }
            }
            
        }
    }
