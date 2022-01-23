//
//  UserView.swift
//  Femhoot
//
//  Created by Irene on 23/1/22.
//

import SwiftUI

struct UserView: View {
  @State var nameText: String = "Name: "
  @Binding var name: String
  @State var progressText: String = "Progress: "
  @Binding var currentQuestion: Int
  @Binding var totalQuestions: Int
  @State var progress: String = ""
  @Binding var score: Int
  
  var body: some View {
    VStack {
      
      HStack{
        VStack(alignment: .leading) {
          UserDataView(title: self.nameText, dynamicData: $name)
          
          UserDataView(title: self.progressText, dynamicData: $progress)
        }
        .padding()
        
        Spacer()
        
        VStack(alignment: .center) {
          Text("Score: ")
            .bold()
            .font(Font.system(size: 21, design: .default))
            .foregroundColor(Color.pink)
            .padding(.horizontal)
            .padding(.bottom, 5)
          Text(String(score))
            .bold()
            .font(Font.system(size: 41, design: .default))
            .foregroundColor(Color.lila)
            .padding(.horizontal)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12)
                      .stroke(Color.pink, lineWidth: 1))
        .padding()
      }
    }
    .onAppear(perform: {
      progress = "\(currentQuestion) / \(totalQuestions)"
    })
    .onChange(of: currentQuestion, perform: { _ in
      progress = "\(currentQuestion) / \(totalQuestions)"
    })
  }
}

