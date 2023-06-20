//
//  ContentView.swift
//  Right on Target SwiftUI
//
//  Created by Kate Kashko on 19.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var logic = ScoreCounter()
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер, как можно ближе к: \(logic.targetValue)")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(20)
            HStack {
                Text("0")
                    .font(.title2)
                SliderView(value: $logic.currentValue, opacity: logic.opacity)
                Text("100")
                    .font(.title2)
            }
            .padding(20)

            ButtonView(
                title: "Проверь меня!",
                color: .cyan,
                action: {isPresented.toggle()})
            .alert("Your score", isPresented: $isPresented, actions: {}) {
                Text("\(logic.computeScore())")
            }
            .padding(20)

            ButtonView(
                title: "Начать заново",
                color: .cyan,
                action: logic.reset)
        }
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
