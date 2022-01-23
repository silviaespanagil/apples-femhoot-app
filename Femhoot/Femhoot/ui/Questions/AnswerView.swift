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
        .font(.body)
        .padding(.horizontal)
        .padding(.vertical, 5)
        .fixedSize(horizontal: false, vertical: true)
      
      Spacer()
      
      if isClicked == true {
        Image(systemName: answer.isTrue ? "checkmark" : "xmark")
          .resizable()
          .scaledToFit()
          .frame(width: 20, height: 20, alignment: .center)
          .padding(8)
          .foregroundColor(.white)
          .background(Color.lila)
          .clipShape(Circle())
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
    .padding(.vertical)
  }
}
