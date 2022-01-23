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
    
    func getQuestion() {
        
        let randomIndexNumber = Int.random(in: 0..<questionsArray.count)
        
        question = "\(questionsArray[randomIndexNumber].question)"
        answers = questionsArray[randomIndexNumber].answers
    }
}
