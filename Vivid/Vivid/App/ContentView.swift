//
//  ContentView.swift
//  Vivid
//
//  Created by 이종선 on 8/21/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Crash") {
              fatalError("Crash was triggered")
            } 
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
