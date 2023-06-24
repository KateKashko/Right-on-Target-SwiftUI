//
//  ContentView.swift
//  Right on Target SwiftUI
//
//  Created by Kate Kashko on 19.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var scoreCounter = ScoreCounter()
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер, как можно ближе к: \(scoreCounter.targetValue)")
            
            HStack {
                Text("0")
                    .font(.title2)
                SliderView(value: $scoreCounter.currentValue, opacity: scoreCounter.opacity)
                Text("100")
                    .font(.title2)
            }
            .padding(20)

            ButtonView(
                title: "Проверить",
                color: .cyan,
                action: {isPresented.toggle()})
            .alert(
                "Your score",
                isPresented: $isPresented,
                actions: {}) {
                    Text("\(scoreCounter.computeScore())")
                }
            .padding(20)

            ButtonView(
                title: "Начать заново",
                color: .cyan,
                action: scoreCounter.reset)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
