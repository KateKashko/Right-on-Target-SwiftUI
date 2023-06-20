//
//  ScoreCounter.swift
//  Right on Target SwiftUI
//
//  Created by Kate Kashko on 19.06.2023.
//

import Foundation

class ScoreCounter: ObservableObject {

    @Published var currentValue = 0.0
    var targetValue = Int.random(in: 1...100)
    
    var opacity: Double {
        Double(computeScore()) / 100
    }
    
    func computeScore() -> Int {
        let difference = abs(targetValue - lround(Double(currentValue)))
        return 100 - difference
    }
    
    func reset() {
       targetValue = Int.random(in: 1...100)
       currentValue = 0
    }
}
