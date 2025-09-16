//
//  ContentView.swift
//  Vivid
//
//  Created by 이종선 on 8/21/25.
//

import SwiftUI
import FirebaseAnalytics

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Crash") {
              fatalError("Crash was triggered")
            }
            
            Button("Logging") {
                Analytics.logEvent("timeline", parameters: nil)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
