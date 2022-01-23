//
//  FactsViewModel.swift
//  Femhoot
//
//  Created by Silvia España on 23/1/22.
//

import Foundation
import SwiftUI

class FactsViewModel: ObservableObject {
    
    // View values
    let imageSystemName: String = "arrow.2.squarepath"
    @Published var randomFact: String = ""
    
    let fact = Bundle.main.decode([Fact].self, from: "facts.json")
    
    func getFact() {
        
        let randomIndexNumber = Int.random(in: 0..<fact.count)
        
        randomFact = "\(fact[randomIndexNumber].fact)"
    }
    
}
