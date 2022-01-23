//
//  FemhootView.swift
//  Femhoot
//
//  Created by Irene on 23/1/22.
//

import SwiftUI

struct FemhootView: View {
  static let imageArrow = "arrow.right"
  static let imageCongratulation = "congratulation"

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
      
      if currentQuestion < totalQuestions {
        
        QuestionView(question: $viewModel.question, answers: $viewModel.answers, disableAnswers: $answerAreDisabled, isAnswerCorrect: $isAnswerCorrect)
        
        if answerAreDisabled {
          
          HStack {
            
            Spacer()
            Button(action: {
              currentQuestion += 1
              isAnswerCorrect = false
              if currentQuestion < totalQuestions {
                viewModel.getQuestion(index: currentQuestion)
              }
            }){
              
              Image(systemName: FemhootView.imageArrow)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(10)
                .foregroundColor(.white)
                .background(Color.lila)
                .clipShape(Circle())
                .padding()
            }
          }
          .padding(.top)
        }
      }
      
      else {
        Text("Congratulations!")
          .font(.title)
          .foregroundColor(Color.pink)
          .padding()
        Spacer()
        
        Image(FemhootView.imageCongratulation)
          .resizable()
          .scaledToFill()
          .frame(width: 60, height: 60, alignment: .center)
        
        Text("Your Score: ")
          .bold()
          .font(.title)
          .foregroundColor(Color.pink)
          .padding()
        
        Text(String(score))
          .bold()
          .font(Font.system(size: 41, design: .default))
          .foregroundColor(Color.lila)
          .padding()
      }
      
      Spacer()
    }
    .onChange(of: isAnswerCorrect, perform: { isCorrect in
      if isCorrect {
        score += 10
      }
    })
    .onAppear {
      viewModel.getQuestion(index: currentQuestion)
      totalQuestions = viewModel.questionsArray.count
    }
  }
}
