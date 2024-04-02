//
//  ContentView.swift
//  Stopwatch
//
//  Created by Kota Aso on 2024/04/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("0.0")
                .font(.system(size: 123, weight: .black))
            Button {
                
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
