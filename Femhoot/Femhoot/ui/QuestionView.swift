//
//  QuestionView.swift
//  Femhoot
//
//  Created by Irene on 23/1/22.
//

import SwiftUI

struct QuestionView: View {
  
  @State var question = "Who is best known for the creation of the Google Android logo including its green robot icon?"
  @State var answerList = [ "Hedy Lamarr" : true,  "Shirly Lamarr" : false,  "Steve Lover" : false]
  @State var disableAnswers = false
  var body: some View {
    VStack(alignment: .leading) {
      Text(question)
        .bold()
        .font(Font.system(size: 32, design: .default))
        .foregroundColor(Color.lila)
        .padding(.horizontal)
      
      
      ForEach(Array(answerList.keys), id: \.self) { key in
        AnswerView(answerText: key, isAnswerCorrect: answerList[key] == true, isDisabled: $disableAnswers)
        .padding()
      }
      
    }
  }
}
