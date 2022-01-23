//
//  AnswerView.swift
//  Femhoot
//
//  Created by Irene on 23/1/22.
//

import SwiftUI

struct AnswerView: View {
    
    @State var answerText: String
    @State var isAnswerCorrect : Bool
    @State var isClicked: Bool = false
    @Binding var isDisabled : Bool
    
    var body: some View {
        
        HStack {
            Text(answerText)
                .font(Font.system(size: 21, design: .default))
                .padding(.horizontal)
                .padding(.vertical, 5)
            
            Spacer()
            
            if isClicked == true {
                Image( isAnswerCorrect ? "congratulation" : "fail")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60.0, alignment: .trailing)
                    .padding()
            }
        }
        .frame(maxWidth: .infinity)
        .background(RoundedRectangle(cornerRadius: 12)
                        .stroke( isClicked == true && isAnswerCorrect ? .green : Color.pink, lineWidth: 2))
        .contentShape(Rectangle())
        .onTapGesture {
            isClicked = true
            isDisabled = true
        }
        .onDisappear {
            isDisabled = false
        }
        .disabled(isDisabled)
    }
}
