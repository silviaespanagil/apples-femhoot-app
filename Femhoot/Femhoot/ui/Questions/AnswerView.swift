//
//  AnswerView.swift
//  Femhoot
//
//  Created by Irene on 23/1/22.
//

import SwiftUI

struct AnswerView: View {
  
  @State var answer: Answer
  @State var isClicked: Bool = false
  @Binding var isDisabled: Bool
  @Binding var isAnswerCorrect: Bool
  
  var body: some View {
    
    HStack {
      Text(answer.name)
        .font(Font.system(size: 21, design: .default))
        .padding(.horizontal)
        .padding(.vertical, 5)
      
      Spacer()
      
      if isClicked == true {
        Image( answer.isTrue ? "congratulation" : "fail")
          .resizable()
          .scaledToFit()
          .frame(width: 60.0, alignment: .trailing)
          .padding()
      }
    }
    .frame(maxWidth: .infinity)
    .background(RoundedRectangle(cornerRadius: 12)
                  .stroke( isClicked && answer.isTrue ? .green : Color.pink, lineWidth: 2))
    .contentShape(Rectangle())
    .onTapGesture {
      isClicked = true
      isDisabled = true
      isAnswerCorrect = answer.isTrue
    }
    .onDisappear {
      isDisabled = false
    }
    .disabled(isDisabled)
  }
}
