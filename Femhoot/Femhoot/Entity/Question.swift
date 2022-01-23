//
//  Question.swift
//  Femhoot
//
//  Created by Silvia España on 23/1/22.
//

import Foundation

struct Question: Codable {
    
    let question: String
    let answers: [Answer]
}
