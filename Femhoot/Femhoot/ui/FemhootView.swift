//
//  FemhootView.swift
//  Femhoot
//
//  Created by Irene on 23/1/22.
//

import SwiftUI

struct FemhootView: View {
  @State var name: String
  @State var score: Int = 0
  @State var currentQuestion: Int = 0
  @State var totalQuestions: Int = 0

    var body: some View {
      VStack {
        UserView(name: $name, progress: "\(currentQuestion) / \(totalQuestions)", score: $score)
      }
    }
}
