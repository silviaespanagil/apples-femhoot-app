//
//  Answer.swift
//  Femhoot
//
//  Created by Silvia España on 23/1/22.
//

import Foundation

struct Answer: Codable, Identifiable {
    
    let id = UUID()
    let name: String
    let isTrue: Bool
}
