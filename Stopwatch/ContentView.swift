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
            Button {
                if timer == nil {
                    timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                    secondsElapsed += 0.1
                    }
                }
            } label: {
                Text("start")
                    .font(.largeTitle)
                    .frame(width: 200)
                    .foregroundColor(.white)
                    .padding()
                    .background(.green)
                    .cornerRadius(10)
            }
            Button {
                if let time = timer {
                    time.invalidate()
                }
                timer = nil
            } label: {
                Text("stop")
                    .font(.largeTitle)
                    .frame(width: 200)
                    .foregroundColor(.white)
                    .padding()
                    .background(.red)
                    .cornerRadius(10)
            }
            Button {
                if let time = timer {
                    time.invalidate()
                }
                timer = nil
                secondsElapsed = 0
            } label: {
                Text("reset")
                    .font(.largeTitle)
                    .frame(width: 200)
                    .foregroundColor(.white)
                    .padding()
                    .background(.gray)
                    .cornerRadius(10)
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
