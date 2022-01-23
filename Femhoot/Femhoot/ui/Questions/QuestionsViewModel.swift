//
//  QuestionsViewModel.swift
//  Femhoot
//
//  Created by Silvia España on 23/1/22.
//

import Foundation
import SwiftUI

class QuestionsViewModel: ObservableObject {
    
    // QuestioView values
    @Published var question: String = ""
    @Published var answers: [Answer] = []
    
    // Json decoding
    let questionsArray = Bundle.main.decode([Question].self, from: "questions.json")

    
    // MARK: Methods
    
  func getQuestion(index: Int) {
        
        question = "\(questionsArray[index].question)"
        answers = questionsArray[index].answers
    }
}
