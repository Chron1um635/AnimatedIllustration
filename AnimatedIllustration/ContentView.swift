//
//  ContentView.swift
//  AnimatedIllustration
//
//  Created by Максим Назаров on 19.10.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var start = false
    
    var body: some View {
        Button("Click me", action: buttonAction)
        Spacer()
        
        VStack {
            if start {
                Text("SONY")
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
            }
            
            
            IconView(isAnimating: start)
                .frame(width: 250, height: 250)
            if start {
                Text("""
                             COMPUTER
                        ENTERTEINMENT
                        """)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
                }
            }
            
        
        Spacer()
    }
    private func buttonAction() {
        withAnimation {
            start.toggle()
        }
    }
}

#Preview {
    ContentView()
}
