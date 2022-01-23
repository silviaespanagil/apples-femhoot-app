//
//  FemhootView.swift
//  Femhoot
//
//  Created by Irene on 23/1/22.
//

import SwiftUI

struct FemhootView: View {
  static let imageArrow = "arrow.right"
  @StateObject var viewModel: QuestionsViewModel
  
  @State var name: String
  @State var score: Int = 0
  @State var currentQuestion: Int = 0
  @State var totalQuestions: Int = 0
  @State var answerAreDisabled: Bool = false
  @State var isAnswerCorrect: Bool = false
  
  var body: some View {
    
    VStack {
      
      UserView(name: $name, currentQuestion: $currentQuestion, totalQuestions: $totalQuestions, score: $score)
      
      Divider()
      
      FactsView(viewModel: FactsViewModel())
      
      Divider()
      
      QuestionView(question: $viewModel.question, answers: $viewModel.answers, disableAnswers: $answerAreDisabled, isAnswerCorrect: $isAnswerCorrect)
      
      if answerAreDisabled {
        
        HStack {
          
          Spacer()
          Button(action: {
            currentQuestion += 1
            viewModel.getQuestion()
          }){
            
            Image(systemName: FemhootView.imageArrow)
              .frame(width: 20, height: 20)
              .padding(5)
              .font(.footnote)
              .foregroundColor(Color.noWhite)
              .background(Color.lila)
              .clipShape(Circle())
          }
        }
        .padding(.top)
      }
      
      Spacer()
    }
    .onChange(of: isAnswerCorrect, perform: { isCorrect in
      if isCorrect {
        score += 10
      }
    })
    .onAppear {
      viewModel.getQuestion()
      totalQuestions = viewModel.questionsArray.count
    }
  }
}
