//
//  QuestionView.swift
//  Femhoot
//
//  Created by Irene on 23/1/22.
//

import SwiftUI

struct QuestionView: View {
  
  @Binding var question: String
  @Binding var answers: [Answer]
  @Binding var disableAnswers: Bool
  @Binding var isAnswerCorrect: Bool
  
  var body: some View {
    
    VStack(alignment: .leading) {
      
      Text(question)
        .bold()
        .font(Font.system(size: 21, design: .default))
        .foregroundColor(Color.lila)
        .padding(.horizontal)
      
      
      ForEach(answers, id: \.self) { answer in
        
        AnswerView(answer: answer, isDisabled: $disableAnswers, isAnswerCorrect: $isAnswerCorrect)
      }
    }.padding()
    
  }
}
