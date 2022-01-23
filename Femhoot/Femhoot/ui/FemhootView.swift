//
//  FemhootView.swift
//  Femhoot
//
//  Created by Irene on 23/1/22.
//

import SwiftUI

struct FemhootView: View {
    
    @StateObject var viewModel: QuestionsViewModel
    
    @State var name: String
    @State var score: Int = 0
    @State var currentQuestion: Int = 0
    @State var totalQuestions: Int = 0
    @State var isDisabled: Bool = false
    
    var body: some View {
        
        VStack {
            
            UserView(name: $name, progress: "\(currentQuestion) / \(totalQuestions)", score: $score)
            
            Divider()
            
            FactsView(viewModel: FactsViewModel())
            
            Divider()
            
            QuestionView(question: $viewModel.question, answers: $viewModel.answers, disableAnswers: $isDisabled)
            
            if isDisabled {
                
            HStack {
                
                Spacer()
                Button(action: {
                    viewModel.getQuestion()
                }){
                    
                    Image(systemName: "arrow.right")
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
        .onAppear {
            
            viewModel.getQuestion()
        }
    }
}
