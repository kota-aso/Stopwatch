//
//  ContentView.swift
//  Stopwatch
//
//  Created by Kota Aso on 2024/04/02.
//

import SwiftUI

struct ContentView: View {
    @State var timer: Timer? = nil
    @State var secondsElapsed: Double = 0.0
    
    var body: some View {
        VStack {
            Text(String(format: "%.1f", secondsElapsed))
                .font(Font(UIFont.monospacedDigitSystemFont(ofSize: 120, weight: .black)))
            ButtonView(buttonAction: { start() }, text: "Start", color: .green)
            ButtonView(buttonAction: { stop() }, text: "Stop", color: .red)
            ButtonView(buttonAction: { reset() }, text: "Reset", color: .gray)
        }
        .padding()
    }
    
    func start() {
        if timer == nil {
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                secondsElapsed += 0.1
            }
        }
    }
    
    func stop() {
        if let time = timer {
            time.invalidate()
        }
        timer = nil
    }
    
    func reset() {
        if let time = timer {
            time.invalidate()
        }
        timer = nil
        secondsElapsed = 0
    }
}

struct ButtonView: View {
    let buttonAction: () -> Void
    let text: String
    let color: Color
    
    var body: some View {
        Button {
            buttonAction()
        } label: {
            Text(text)
                .font(.largeTitle)
                .frame(width: 200)
                .foregroundColor(.white)
                .padding()
                .background(color)
                .cornerRadius(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
